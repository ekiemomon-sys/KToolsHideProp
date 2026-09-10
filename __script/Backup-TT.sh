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
# Random color (portable, no array needed)
case $(( ${RANDOM:-$(date +%s)} % 12 )) in
  0) RGB='\033[0;31m' ;;
  1) RGB='\033[0;32m' ;;
  2) RGB='\033[0;33m' ;;
  3) RGB='\033[0;34m' ;;
  4) RGB='\033[0;35m' ;;
  5) RGB='\033[0;36m' ;;
  6) RGB='\033[1;31m' ;;
  7) RGB='\033[1;32m' ;;
  8) RGB='\033[1;33m' ;;
  9) RGB='\033[1;34m' ;;
  10) RGB='\033[1;35m' ;;
  *) RGB='\033[1;36m' ;;
esac

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

modpes() {
    settings put global airplane_mode_on 1 2>/dev/null
    am broadcast -a android.intent.action.AIRPLANE_MODE >/dev/null 2>&1
    }

katrinalaunch(){
    am start -n com.fufufu.katrina.backup/com.fufufu.katrina.backup.MainActivity >/dev/null 2>&1
    }

backup() {
# ====================== KONFIGURASI ======================
SSAID_SRC="/data/system/users/0/settings_ssaid.xml"
PROP_SRC="/data/adb/modules/KToolsHidePropsConf/system.prop"
# ========================================================

clear
banner

# ====================== DETEKSI OTOMATIS VERSI TIKTOK ======================
echo -e "${C}===== VERSI TIKTOK YANG TERINSTALL =====${N}"
echo -e ""

if [ -d "/data/user/0/com.ss.android.ugc.trill" ]; then
  PKG="com.ss.android.ugc.trill"
#  echo -e "${G}[✓] Ditemukan : ${W}$PKG${N}"
elif [ -d "/data/user/0/com.zhiliaoapp.musically" ]; then
  PKG="com.zhiliaoapp.musically"
#  echo -e "${G}[✓] Ditemukan : ${W}$PKG${N}"
else
  echo -e "${R}[✗] Tidak ada aplikasi TikTok yang terinstall!${N}"
  echo -e "${R}    Cek package: com.ss.android.ugc.trill / com.zhiliaoapp.musically${N}"
  exit 1
fi

BASE_DIR="/sdcard/YouTube/__backup-tokotok-$(date +%d%m%Y)/$PKG"

echo -e "${G}[✓] Package     : ${W}$PKG${N}"
echo -e "${G}[✓] SSAID Source: ${W}$SSAID_SRC${N}"
echo -e "${G}[✓] Prop Source : ${W}$PROP_SRC${N}"
echo -e ""

TIMESTAMP=$(date +%Y%m%d-%H%M%S)

# Buat folder utama
mkdir -p "$BASE_DIR"

# Cari nomor folder berikutnya
LAST_NUM=$(ls "$BASE_DIR" 2>/dev/null | grep -E '^[0-9]+$' | sort -n | tail -1)
if [ -z "$LAST_NUM" ]; then
  NEXT_NUM=1
else
  NEXT_NUM=$((LAST_NUM + 1))
fi

FOLDER=$(printf "%03d" $NEXT_NUM)
WORK_DIR="$BASE_DIR/$FOLDER"
mkdir -p "$WORK_DIR"

echo -e "${Y}[•] Folder backup : ${W}$WORK_DIR${N}"
echo -e ""

# ===== INPUT CATATAN CUSTOM =====
echo -e "${C}===== CATATAN BACKUP =====${N}"
echo -e "${Y}Masukkan catatan untuk backup ini${N}"
echo -e "${W}(Tekan Enter untuk menggunakan catatan default)${N}"
echo -n "${G}NOTE > ${N}"
read -r CUSTOM_NOTE
if [ -z "$CUSTOM_NOTE" ]; then
  CUSTOM_NOTE="Backup via Script KTools"
fi
# Escape karakter khusus agar JSON tetap valid
CUSTOM_NOTE=$(printf '%s' "$CUSTOM_NOTE" | sed 's/\\/\\\\/g; s/"/\\"/g')
echo -e "${G}[✓] Catatan : ${W}$CUSTOM_NOTE${N}"
echo -e ""
sleep 2
clear
banner
echo -e ""
# 1. Stop aplikasi
echo -e "${Y}[•] Menghentikan aplikasi TikTok...${N}"
am force-stop $PKG >/dev/null 2>&1
sleep 1
echo -e "${G}[✓] Aplikasi berhasil dihentikan${N}"
echo -e ""

APP_DATA="/data/user/0/$PKG"
if [ ! -d "$APP_DATA" ]; then
  echo -e "${R}[✗] Folder data aplikasi tidak ditemukan!${N}"
  exit 1
fi

# 2. Buat filessaid.tar.gz
echo -e "${Y}[•] Membuat filessaid.tar.gz...${N}"
if [ -f "$SSAID_SRC" ]; then
  tar -czf "$APP_DATA/filessaid.tar.gz" -C / data/system/users/0/settings_ssaid.xml 2>/dev/null
  echo -e "${G}[✓] filessaid.tar.gz berhasil dibuat${N}"
else
  echo -e "${R}[✗] File SSAID tidak ditemukan${N}"
fi

# 3. Buat fileprop.tar.gz
echo -e "${Y}[•] Membuat fileprop.tar.gz...${N}"
if [ -f "$PROP_SRC" ]; then
  tar -czf "$APP_DATA/fileprop.tar.gz" -C / data/adb/modules/KToolsHidePropsConf/system.prop 2>/dev/null
  echo -e "${G}[✓] fileprop.tar.gz berhasil dibuat${N}"
else
  echo -e "${R}[✗] File system.prop tidak ditemukan${N}"
fi
sleep 2
clear
banner
echo -e ""
echo -e "${C}===== BACKUP TIKTOK DILANJUTKAN !! =====${N}"
echo -e ""

# 4. Backup utama
echo -e "${Y}[•] Sedang mengkompres data aplikasi...${N}"
MAIN_TAR="$WORK_DIR/${PKG}-${TIMESTAMP}.tar.gz"
tar -czf "$MAIN_TAR" -C / data/user/0/$PKG 2>/dev/null

if [ -f "$MAIN_TAR" ]; then
  SIZE=$(ls -lh "$MAIN_TAR" | awk '{print $5}')
  echo -e "${G}[✓] Kompresi selesai ($SIZE)${N}"
else
  echo -e "${R}[✗] Gagal membuat archive utama${N}"
  exit 1
fi

# 5. Buat JSON
JSON_FILE="$WORK_DIR/${PKG}-${TIMESTAMP}.json"
cat > "$JSON_FILE" << EOF
{
  "BOARD": "$(getprop ro.product.board)",
  "IDIKLAN": "$(cat /proc/sys/kernel/random/uuid 2>/dev/null || echo "00000000-0000-0000-0000-000000000000")",
  "RADIOVERSION": "$(getprop gsm.version.baseband)",
  "HOST": "$(getprop ro.build.host)",
  "system.prop": "true",
  "USERAGENT": "Mozilla/5.0 (Linux; Android $(getprop ro.build.version.release); $(getprop ro.product.model) Build/$(getprop ro.build.id); wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.0.0 Mobile Safari/537.36",
  "DISPLAY": "$(getprop ro.build.display.id)",
  "FINGERPRINT": "$(getprop ro.build.fingerprint)",
  "PRODUCT": "$(getprop ro.product.name)",
  "BLUETHOOTNAME": "NOT ETERNAL",
  "NOTE": "$CUSTOM_NOTE",
  "COLOR": "#FFFFFFFF",
  "SDK": "$(getprop ro.build.version.sdk)",
  "SERIAL": "NOT ETERNAL",
  "DEVICENAME": "NOT ETERNAL",
  "BUILDID": "$(getprop ro.build.id)",
  "ANDROIDID": "NOT ETERNAL",
  "settings_ssaid": "true",
  "DEVICE": "$(getprop ro.product.device)",
  "TIME": "$(date +%s)000",
  "IMEI": "NOT ETERNAL",
  "MODEL": "$(getprop ro.product.model)",
  "RELEASE": "$(getprop ro.build.version.release)",
  "MANUFACTURER": "$(getprop ro.product.manufacturer)",
  "USER": "$(getprop ro.build.user)",
  "BOOT": "$(getprop ro.bootimage.build.date.utc 2>/dev/null || echo 0)",
  "MARK": "false",
  "BRAND": "$(getprop ro.product.brand)",
  "UNIX": "$(date +%s)",
  "DATE": "$(date)",
  "HARDWARE": "$(getprop ro.hardware)",
  "SERIAL2": "NOT ETERNAL",
  "HTTPAGENT": "Dalvik/2.1.0 (Linux; U; Android $(getprop ro.build.version.release); $(getprop ro.product.model) Build/$(getprop ro.build.id))",
  "INCREMENTAL": "$(getprop ro.build.version.incremental)"
}
EOF

# 6. Bersihkan file sementara
rm -f "$APP_DATA/filessaid.tar.gz" "$APP_DATA/fileprop.tar.gz" 2>/dev/null

echo -e ""
echo -e "${W}≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠${N}"
echo -e "${G}[✓] BACKUP SELESAI !${N}"
echo -e "${W}≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠${N}"
echo -e "${C}Package  : ${W}$PKG${N}"
echo -e "${C}Ukuran   : ${W}$SIZE${N}"
echo -e "${C}Folder   : ${W}$WORK_DIR${N}"
#echo -e "${C}Archive  : ${W}$(basename $MAIN_TAR)${N}"
#echo -e "${C}Metadata : ${W}$(basename $JSON_FILE)${N}"
echo -e "${W}≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠${N}"
echo -e ""
sleep 3
            am force-stop bin.mt.plus
            am force-stop os.tools.scriptmanager
            am force-stop bin.mt.plus.canary
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
kompres() {
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
kompres >/dev/null
backup 
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
}

# === Main ===
clear
banner
echo "🌀${Y}===== PROSES VERIFIKASI =====${N}🌀"
echo ""
echo ""
if verify_serial; then
  send_telegram "✅ Serial $SERIAL terdaftar. Lanjutkan __kompres-backup-TT.sh... Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  proses
else
  send_telegram "⛔ Serial $SERIAL tidak terdaftar! Script __kompres-backup-TT.sh dibatalkan. Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  bloked
  exit 1
fi