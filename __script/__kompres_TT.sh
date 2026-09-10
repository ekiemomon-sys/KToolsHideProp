#!/system/bin/sh

# Use colours
G='\e[01;32m'    # GREEN
R='\e[01;31m'    # RED
Y='\e[01;33m'    # YELLOW
B='\e[01;34m'    # BLUE
V='\e[01;35m'    # VIOLET
Bl='\e[01;30m'   # BLACK
C='\e[01;36m'    # CYAN
W='\e[01;37m'    # WHITE
N='\e[00;37;40m' # NEUTRAL
WARNA=('\033[0;31m' '\033[0;32m' '\033[0;33m' '\033[0;34m' '\033[0;35m' '\033[0;36m' '\033[1;31m' '\033[1;32m' '\033[1;33m' '\033[1;34m' '\033[1;35m' '\033[1;36m')
RGB=${WARNA[$((RANDOM % ${#WARNA[@]}))]}

banner() {
echo -e "${W} ≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠${N}"
echo -e "${R} |${N}" "${RGB}██╗  ██╗████████╗   ██╗██████╗     ██╗██╗  ${RGB}"
echo -e "${R} |${N}" "${RGB}██║ ██╔╝╚══██╔══╝   ██║██╔══██╗    ██║██║  ${RGB}"
echo -e "${R} |${N}" "${RGB}█████╔╝    ██║█████╗██║██║  ██║    ██║██║  ${RGB}"
echo -e "${R} |${N}" "${RGB}██╔═██╗    ██║╚════╝██║██║  ██║    ╚═╝╚═╝  ${RGB}"
echo -e "${R} |${N}" "${RGB}██║  ██╗   ██║      ██║██████╔╝    ██╗██╗  ${RGB}"
echo -e "${R} |${N}" "${RGB}╚═╝  ╚═╝   ╚═╝      ╚═╝╚═════╝     ╚═╝╚═╝  ${RGB}"
echo -e "${W} ≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠${N}"
echo -e "${W} |${N}" "${G} SUBCRIBE DONG : youtube.com/c/KangTutorial ${N}"
echo -e "${W} |${N}" "${G} PANSOS DISINI : t.me/grup_kangtutorial ${N}"
echo -e "${W} ≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠${N}"
echo -n "${Y} |${Y}""${R}  Waktu System : ${N}"; date
echo -e ""
	}
PKG="com.ss.android.ugc.trill"
modpes() {
    settings put global airplane_mode_on 1 2>/dev/null
    am broadcast -a android.intent.action.AIRPLANE_MODE >/dev/null 2>&1
    }

katrinalaunch(){
    am start -n com.fufufu.katrina.backup/com.fufufu.katrina.backup.MainActivity >/dev/null 2>&1
    }
    
type_effect() {
    text="$1"
    delay="${2:-0.02}"
    nonl="${3:-0}"
    i=1
    len=${#text}
    while [ "$i" -le "$len" ]; do
        ch=$(printf "%s" "$text" | cut -c "$i")
        printf "%s" "$ch"
        sleep "$delay"
        i=$((i + 1))
    done
    if [ "$nonl" -eq 0 ]; then
        printf "\n"
    fi
}
proses (){
clear
banner
modpes 2>/dev/null
mount -o rw,remount / 2>/dev/null || true
echo ""
echo ""
    echo "🌀${G}===== DEVICE TERVERIFIKASI =====${N}🌀"
        echo -e "${Y}© ${Y}"
        echo -e "${G} \ ${G}"
		echo -e "${G}  \ ________/${G}""${RGB} KOMPRES TIKTOK DILANJUTKAN  !!${RGB}"
            echo ""
            echo ""
            echo ""		
backup() {
# Cari folder yang tersedia
if [ -d "/data/data/com.ss.android.ugc.trill" ]; then
    TARGET="/data/data/com.ss.android.ugc.trill"

elif [ -d "/data/data/com.zhiliaoapp.musically" ]; then
    TARGET="/data/data/com.zhiliaoapp.musically"

else
    echo "Folder TikTok tidak ditemukan!"
    exit 1
fi

echo "[+] Target ditemukan: $TARGET"

# Pastikan target ada
if [ ! -d "$TARGET" ]; then
    echo "Folder target tidak ditemukan!"
    exit 1
fi

echo "[+] Mulai membersihkan folder..."

# Loop semua isi folder
for item in "$TARGET"/*; do
    [ ! -e "$item" ] && continue

    name=$(basename "$item")

    # Skip shared_prefs
    if [ "$name" = "shared_prefs" ]; then
        echo "[SKIP] $item"
        continue
    fi

    # Handle folder files
    if [ "$name" = "files" ]; then
        echo "[+] Membersihkan isi files kecuali keva..."

        for sub in "$TARGET/files"/*; do
            [ ! -e "$sub" ] && continue

            subname=$(basename "$sub")

            # Skip keva
            if [ "$subname" = "keva" ]; then
                echo "[SKIP] $sub"
                continue
            fi

            rm -rf "$sub"
            echo "[DEL] $sub"
        done

        continue
    fi

    # Hapus selain pengecualian
    rm -rf "$item"
    echo "[DEL] $item"
done

echo "[✓] Selesai."
}
backup >/dev/null
echo "🌀${Y}===== Kompres Tiktok Done !! =====${N}🌀"
sleep 1
katrinalaunch
exit
}

bloked(){
clear
banner
echo ""
echo "⛔${Y} Device Anda TIDAK TERDAFTAR !!${N}"
        echo "|"
        echo "|"
		echo "📢 ${Y}Silahkan Hubungi RT Setempat !!"
            echo ""
            echo ""
            echo ""
            rm -rf /data/local/tmp/*
            exit 0
}

clear
banner 

	# === KONFIGURASI ===
SERIAL=$(getprop ro.serialno)
TOKEN="8552281156:AAEc_NX8KuGAyDvEgjw29lU2EGzWKaKtdhY"
CHAT_ID="5155493937"
list_member="/data/adb/modules/KToolsHidePropsConf/printfiles/ktools.txt"

# === Fungsi kirim log ke Telegram ===
send_telegram() {
  MSG="$1"
  curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
       -d chat_id="$CHAT_ID" \
       -d text="$MSG" >/dev/null
}

# === Verifikasi serial ===
verify_serial() {
  grep -q "$SERIAL" "$list_member"
  return $?
} >/dev/null

# === Main ===
clear
banner
echo "🌀${Y}===== PROSES VERIFIKASI =====${N}🌀"
echo ""
echo ""
if verify_serial; then
  send_telegram "✅ Serial $SERIAL terdaftar. Lanjutkan __kompres-TT.sh... Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  proses
else
  send_telegram "⛔ Serial $SERIAL tidak terdaftar! Script __kompres-TT.sh dibatalkan. Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  bloked
  exit 1
fi