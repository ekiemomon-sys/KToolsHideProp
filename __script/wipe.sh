#!/system/bin/sh

EXPECTED_HASH="6d206a36fc0a791a7619901fa98dcb1a80df8577f0626c5b943f8ed6364a51e2"

ORIGINAL_PWD="$(pwd)"

SELF="$0"

case "$SELF" in
    /*)
        ;;
    *)
        SELF="$ORIGINAL_PWD/$SELF"
        ;;
esac

DIR="$(dirname "$SELF")"
CORE="$DIR/.kt/wipe.sh.core"

RUNDIR=""
LOCALDIR=""

cleanup()
{
    if [ -n "$LOCALDIR" ]; then
        rm -rf "$LOCALDIR" 2>/dev/null
    fi

    if [ -n "$RUNDIR" ]; then

        if [ "$(id -u)" = "0" ]; then
            rm -rf "$RUNDIR" 2>/dev/null

        elif command -v su >/dev/null 2>&1; then
            su -c "rm -rf '$RUNDIR'" >/dev/null 2>&1
        fi
    fi
}

trap cleanup EXIT INT TERM HUP

# ======================================================
# CORE CHECK
# ======================================================

if [ ! -f "$CORE" ]; then
    echo "[KTProtect]"
    echo "Core binary tidak ditemukan:"
    echo "$CORE"
    exit 10
fi

# ======================================================
# ABI
# ======================================================

DEVICE_ABI="$(getprop ro.product.cpu.abi 2>/dev/null)"

case "$DEVICE_ABI" in
    arm64-v8a)
        ;;
    *)
        echo "[KTProtect]"
        echo "Unsupported ABI: $DEVICE_ABI"
        exit 11
        ;;
esac

# ======================================================
# ELF INTEGRITY
# ======================================================

if command -v sha256sum >/dev/null 2>&1; then

    CURRENT_HASH="$(
        sha256sum "$CORE" |
        awk '{print $1}'
    )"

    if [ "$CURRENT_HASH" != "$EXPECTED_HASH" ]; then
        echo "[KTProtect]"
        echo "Integrity verification FAILED."
        exit 12
    fi
fi

# ======================================================
# ALREADY ROOT
# ======================================================

if [ "$(id -u)" = "0" ]; then

    NEED_RUNTIME=0

    case "$CORE" in
        /sdcard/*)
            NEED_RUNTIME=1
            ;;
        /storage/emulated/*)
            NEED_RUNTIME=1
            ;;
        /mnt/runtime/*)
            NEED_RUNTIME=1
            ;;
    esac

    if [ "$NEED_RUNTIME" = "0" ]; then

        chmod 700 "$CORE" 2>/dev/null

        cd "$ORIGINAL_PWD" 2>/dev/null || true

        "$CORE" "$SELF" "$@"

        RESULT=$?

        if [ "$RESULT" != "126" ] &&
           [ "$RESULT" != "127" ]; then
            exit "$RESULT"
        fi
    fi

    # Shared-storage/noexec fallback.

    RUNDIR="/data/local/tmp/.ktp_$$"

    rm -rf "$RUNDIR" 2>/dev/null

    mkdir -p "$RUNDIR" || {
        echo "[KTProtect]"
        echo "Gagal membuat runtime directory."
        exit 20
    }

    cp "$CORE" "$RUNDIR/ktcore" || {
        echo "[KTProtect]"
        echo "Gagal menyalin runtime binary."
        exit 20
    }

    chmod 700 "$RUNDIR/ktcore"

    cd "$ORIGINAL_PWD" 2>/dev/null || true

    "$RUNDIR/ktcore" "$SELF" "$@"

    RESULT=$?

    rm -rf "$RUNDIR" 2>/dev/null
    RUNDIR=""

    exit "$RESULT"
fi

# ======================================================
# ROOT CHECK
# ======================================================

if ! command -v su >/dev/null 2>&1; then
    echo "[KTProtect]"
    echo "ROOT access tidak tersedia."
    exit 100
fi

# ======================================================
# LOCAL STAGING
# ======================================================

BASE_TMP="${TMPDIR:-}"

if [ -z "$BASE_TMP" ] ||
   [ ! -d "$BASE_TMP" ] ||
   [ ! -w "$BASE_TMP" ]; then

    BASE_TMP="$DIR/.kt"
fi

LOCALDIR="$BASE_TMP/.ktargs_$$"

rm -rf "$LOCALDIR" 2>/dev/null

mkdir -p "$LOCALDIR" || {
    echo "[KTProtect]"
    echo "Tidak dapat membuat argument directory."
    exit 21
}

# ======================================================
# ARGUMENT STORAGE
# ======================================================

ARGC=$#

printf '%s\n' "$ARGC" > "$LOCALDIR/argc"

INDEX=1

for ARG in "$@"
do
    printf '%s' "$ARG" > "$LOCALDIR/arg_$INDEX"
    INDEX=$((INDEX + 1))
done

printf '%s' "$ORIGINAL_PWD" > "$LOCALDIR/pwd"
printf '%s' "$SELF" > "$LOCALDIR/launcher"

# ======================================================
# ROOT RUNTIME
# ======================================================

RUNDIR="/data/local/tmp/.ktp_$$"

su -c "
    rm -rf '$RUNDIR' &&
    mkdir -p '$RUNDIR' &&
    cp '$CORE' '$RUNDIR/ktcore' &&
    cp -R '$LOCALDIR/.' '$RUNDIR/' &&
    chmod 700 '$RUNDIR/ktcore'
" >/dev/null 2>&1

if ! su -c "test -x '$RUNDIR/ktcore'" >/dev/null 2>&1; then
    echo "[KTProtect]"
    echo "Gagal menyiapkan ROOT runtime."
    exit 22
fi

# ======================================================
# ROOT HELPER
# ======================================================

cat > "$LOCALDIR/run.sh" <<'ROOTHELPER'
#!/system/bin/sh

RUNDIR="$1"

if [ -z "$RUNDIR" ] ||
   [ ! -d "$RUNDIR" ]; then
    exit 30
fi

ARGC="$(cat "$RUNDIR/argc" 2>/dev/null)"

case "$ARGC" in
    ''|*[!0-9]*)
        exit 31
        ;;
esac

WORKDIR="$(cat "$RUNDIR/pwd" 2>/dev/null)"
LAUNCHER="$(cat "$RUNDIR/launcher" 2>/dev/null)"

if [ -z "$LAUNCHER" ]; then
    exit 33
fi

if [ -n "$WORKDIR" ]; then
    cd "$WORKDIR" 2>/dev/null || true
fi

set --

I=1

while [ "$I" -le "$ARGC" ]
do

    FILE="$RUNDIR/arg_$I"

    if [ ! -f "$FILE" ]; then
        exit 32
    fi

    ARG="$(
        cat "$FILE"
        printf '\001'
    )"

    ARG="${ARG%?}"

    set -- "$@" "$ARG"

    I=$((I + 1))

done

"$RUNDIR/ktcore" "$LAUNCHER" "$@"

RC=$?

exit "$RC"
ROOTHELPER

chmod 700 "$LOCALDIR/run.sh"

# ======================================================
# COPY HELPER
# ======================================================

su -c "
    cp '$LOCALDIR/run.sh' '$RUNDIR/run.sh' &&
    chmod 700 '$RUNDIR/run.sh'
" >/dev/null 2>&1

if ! su -c "test -x '$RUNDIR/run.sh'" >/dev/null 2>&1; then
    echo "[KTProtect]"
    echo "Gagal membuat ROOT helper."
    exit 23
fi

rm -rf "$LOCALDIR" 2>/dev/null
LOCALDIR=""

# ======================================================
# EXECUTE
# ======================================================

su -c "'$RUNDIR/run.sh' '$RUNDIR'"

RESULT=$?

su -c "rm -rf '$RUNDIR'" >/dev/null 2>&1

RUNDIR=""

exit "$RESULT"
