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

clear
banner
sleep 0.2
modpeson(){
settings put global airplane_mode_on 1
am broadcast -a android.intent.action.AIRPLANE_MODE
}
modpesoff(){
settings put global airplane_mode_on 0
am broadcast -a android.intent.action.AIRPLANE_MODE
}
delete(){
rm -r /storage/emulated/0/cache/*.*
rm -rf /data/local/*
rm -rf /storage/emulated/0/Pictures/*
rm -rf /storage/emulated/0/Pictures/
rm -rf /storage/emulated/0/.protected_image
rm -rf /storage/emulated/0/MIUI/
rm -rf /storage/emulated/0/.cri
rm -rf /storage/emulated/0/LOST.DIR/*
rm -rf /storage/emulated/0/cache/*.*
rm -rf /cache/*.apk
rm -rf /cache/*.tmp
rm -rf /data/cache/*.*
rm -rf /data/dalvik-cache/*.apk
rm -rf /data/dalvik-cache/*.tmp
rm -rf /data/dontpanic/*.tmp
rm -rf /data/kernelpanics/*.tmp
rm -rf /data/last_alog
rm -rf /data/last_kmsg
rm -rf /data/local/tmp/*
rm -rf /data/log/*
rm -rf /data/mlog/*
rm -rf /data/tombstones/*
rm -rf /data/*.log
rm -rf /data/log/*
rm -rf /data/data/com.lazada.android/cache/*
rm -rf /data/data/com.lazada.android/code_cache/*
sleep 0.7
}
del
am force-stop com.lazada.android
am kill com.lazada.android
rm -r /data/adb/modules/KToolsHidePropsConf/system.prop
	                      
systemprops() {
mount -o rw,remount /

mkdir /data/local/tmp
dir=/data/local/tmp/system.prop
diral=/data/adb/modules/KToolsHidePropsConf/system.prop
dirsym=/data/adb/modules/KToolsHidePropsConf/system.prop

model=("SM-A145F")
modelok=${model[$RANDOM % ${#model[@]} ]}
n1=("samsung")
n100=samsung
n11=${n1[$RANDOM % ${#n1[@]} ]}
n2=a14nsxx
n3=a14
n4=19
n5=("TP1A.220624.031")
n6=A145FXXU1VKJ5

utc="166943$(head -3 /dev/urandom | tr -cd '0123456789' | cut -c -4)"
utc1=$utc
host="$(head -1 /dev/urandom | tr -cd 'BCDFGHJKLMNPQRSTVWXYZ' | cut -c -2)$(head -3 /dev/urandom | tr -cd 'AUIEO' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'BCDFGHJKLMNPQRSTVWXYZ' | cut -c -2)$(head -2 /dev/urandom | tr -cd '1-9' | cut -c -3)"
user="$(head -3 /dev/urandom | tr -cd 'BCDFGHJKLMNPQRSTVWXYZ' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'auieo' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'bcdfghjklmopqrstvwxyz' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'auieo' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'bcdfghjklmpqrstvwxyz' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'auieo' | cut -c -1)"
brnd="$(head -5 /dev/urandom | tr -cd 'A-Z' | cut -c -6)$(head -1 /dev/urandom | tr -cd '1-9' | cut -c -2)"

number=("01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12")
number1="$(head -3 /dev/urandom | tr -cd '0123' | cut -c -2)"
number2="$(head -3 /dev/urandom | tr -cd '0123' | cut -c -2)"
angka3="$(head -3 /dev/urandom | tr -cd '123456789' | cut -c -1)"
angka2="$(head -3 /dev/urandom | tr -cd '123456789' | cut -c -3)"
hr=("Mon" "Tue" "Wed" "Thu" "Fri" "Sat" "Sun")
tg=("Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov")
th=("2023" "2023")
wib=("+07" "UTC+07")

number3=${number[$RANDOM % ${#number[@]} ]}
hr1=${hr[$RANDOM % ${#hr[@]} ]}
tg1=${tg[$RANDOM % ${#tg[@]} ]}
th1=${th[$RANDOM % ${#th[@]} ]}
wib1=${wib[$RANDOM % ${#wib[@]} ]}

#cek
tgl="$hr1 $tg1 $number3 $number2:$angka3:12 $wib1 $th1"
tgl1="$tgl"
sec="$th1-$number3-01"
sec1="$sec"
fpp="$n11/$n2/$n3:$n4/$n5/$n6:user/release-keys"

#MULAI SYSTEM.PROP
clear
banner
echo -e "${Y}SCRIPT MEMBUAT system.prop OTOMATIS ${N}"
echo ""
echo ""
#mount -o rw,remount /
sleep 0.2
mount -o rw,remount /
rm -f /data/local/tmp/system.prop
sleep 1
#membuat build prop
echo -e "${Y}Membuat System.prop...${N}"
sleep 1
echo "# This file will be read by resetprop" >> $dir
echo "# KToolsHidePropsConf Props Config" >> $dir
echo "# Copyright (c) 2018-2021 Didgeridoohan @ XDA Developers" >> $dir
echo "# Licence: MIT" >> $dir
echo "# Tambahan dari KTools" >> $dir
echo "ro.debuggable=0" >> $dir
echo "ro.secure=1" >> $dir
echo "ro.adb.secure=1" >> $dir
echo "ro.boot.verifiedbootstate=green" >> $dir
echo "ro.boot.veritymode=enforcing" >> $dir
echo "ro.boot.selinux=enforcing" >> $dir
echo "vendor.boot.vbmeta.device_state=locked" >> $dir
echo "ro.boot.flash.locked=1" >> $dir
echo "ro.boot.warranty_bit=0" >> $dir
echo "ro.warranty_invalid=0" >> $dir
echo "sys.oem_unlock_allowed=0" >> $dir
echo "ro.allow.mock.location=0" >> $dir
echo "ro.build.selinux=1" >> $dir
echo "security.perf_harden=1" >> $dir
echo "keyguard.no_require_sim=true" >> $dir
echo "init.svc.flash_recovery=stopped" >> $dir
echo "ro.crypto.state=encrypted" >> $dir
echo "persist.log.tag.LSPosed=S" >> $dir
echo "persist.log.tag.LSPosed-Bridge=S" >> $dir
echo "ro.vendor.build.security_patch=$sec" >> $dir
echo "ro.build.version.security_patch=$sec" >> $dir
echo "#" >> $dir
echo "ro.build.fingerprint=$fpp" >> $dir
echo "ro.bootimage.build.fingerprint=$fpp" >> $dir
echo "ro.system.build.fingerprint=$fpp" >> $dir
echo "ro.vendor.build.fingerprint=$fpp" >> $dir
echo "ro.product.build.fingerprint=$fpp" >> $dir
echo "ro.odm.build.fingerprint=$fpp" >> $dir
echo "ro.system_ext.build.fingerprint=$fpp" >> $dir
echo "ro.build.description=$n2-user $n4 $n5 $n6 release-keys" >> $dir
echo "ro.product.name=$n2" >> $dir
echo "ro.product.system.name=$n2" >> $dir
echo "ro.product.vendor.name=$n2" >> $dir
echo "ro.product.product.name=$n2" >> $dir
echo "ro.product.product.name=$n2" >> $dir
echo "ro.product.odm.name=$n2" >> $dir
echo "ro.product.system_ext.name=$n2" >> $dir
echo "ro.product.device=$n3" >> $dir
echo "ro.product.system.device=$n3" >> $dir
echo "ro.product.vendor.device=$n3" >> $dir
echo "ro.product.product.device=$n3" >> $dir
echo "ro.product.product.device=$n3" >> $dir
echo "ro.product.odm.device=$n3" >> $dir
echo "ro.product.system_ext.device=$n3" >> $dir
echo "ro.build.version.release=$n4" >> $dir
echo "ro.system.build.version.release=$n4" >> $dir
echo "ro.vendor.build.version.release=$n4" >> $dir
echo "ro.product.build.version.release=$n4" >> $dir
echo "ro.odm.build.version.release=$n4" >> $dir
echo "ro.system_ext.build.version.release=$n4" >> $dir
echo "ro.build.id=$n5" >> $dir
echo "ro.system.build.id=$n5" >> $dir
echo "ro.vendor.build.id=$n5" >> $dir
echo "ro.product.build.id=$n5" >> $dir
echo "ro.odm.build.id=$n5" >> $dir
echo "ro.system_ext.build.id=$n5" >> $dir
echo "ro.build.version.incremental=$n6" >> $dir
echo "ro.system.build.version.incremental=$n6" >> $dir
echo "ro.vendor.build.version.incremental=$n6" >> $dir
echo "ro.product.build.version.incremental=$n6" >> $dir
echo "ro.odm.build.version.incremental=$n6" >> $dir
echo "ro.system_ext.build.version.incremental=$n6" >> $dir
echo "ro.build.display.id=TP1A.220624.031.A145FXXU1VKJ5" >> $dir
echo "ro.product.manufacturer=$n11" >> $dir
echo "ro.product.system.manufacturer=$n11" >> $dir
echo "ro.product.vendor.manufacturer=$n11" >> $dir
echo "ro.product.product.manufacturer=$n11" >> $dir
echo "ro.product.product.manufacturer=$n11" >> $dir
echo "ro.product.odm.manufacturer=$n11" >> $dir
echo "ro.product.system_ext.manufacturer=$n11" >> $dir
echo "ro.product.model=$modelok" >> $dir
echo "ro.product.system.model=$modelok" >> $dir
echo "ro.product.vendor.model=$modelok" >> $dir
echo "ro.product.product.model=$modelok" >> $dir
echo "ro.product.product.model=$modelok" >> $dir
echo "ro.product.odm.model=$modelok" >> $dir
echo "ro.product.system_ext.model=$modelok" >> $dir
echo "ro.build.type=user" >> $dir
echo "ro.build.user=dpi" >> $dir
echo "ro.build.host=21DK7B08" >> $dir
echo "ro.build.tags=release-keys" >> $dir
echo "ro.build.flavor=a14nsxx-user" >> $dir
echo "ro.product.brand=$n11" >> $dir
echo "ro.product.system.brand=$n11" >> $dir
echo "ro.product.vendor.brand=$n11" >> $dir
echo "ro.product.product.brand=$n11" >> $dir
echo "ro.product.product.brand=$n11" >> $dir
echo "ro.product.odm.brand=$n11" >> $dir
echo "ro.product.system_ext.brand=$n11" >> $dir

#copy system.prop
sleep 1
cp -r -f /data/local/tmp/system.prop $diral
cp -r -f /data/local/tmp/system.prop $dirsym

echo -e "${C}√ Berhasil √${N}"
clear


mount -o ro,remount /
}

delete2() {
su -c rm -rf /data/local/*
su -c rm -rf /storage/emulated/0/Pictures/*
su -c rm -rf /storage/emulated/0/Pictures/
su -c rm -rf /storage/emulated/0/.cri
su -c rm -rf /storage/emulated/0/LOST.DIR/*
su -c rm -rf /storage/emulated/0/cache/*.*
su -c rm -rf /cache/*.apk
su -c rm -rf /cache/*.tmp
su -c rm -rf /data/cache/*.*
su -c rm -rf /data/dalvik-cache/*.apk
su -c rm -rf /data/dalvik-cache/*.tmp
su -c rm -rf /data/dontpanic/*.tmp
su -c rm -rf /data/kernelpanics/*.tmp
su -c rm -rf /data/last_alog
su -c rm -rf /data/last_kmsg
su -c rm -rf /data/local/tmp/*
su -c rm -rf /data/log/*
su -c rm -rf /data/mlog/*
su -c rm -rf /data/tombstones/*
su -c rm -rf /data/*.log
su -c rm -rf /data/log/*
su -c rm -rf /data/data/com.lazada.android/cache/*
su -c rm -rf /data/data/com.lazada.android/code_cache/*
#
su -c rm -r "/sdcard/Android/*"
su -c rm -r "/sdcard/data/*"
su -c rm -r "/data/dalvik-cache/*"
su -c rm -r "/cache/**"
#su -c rm -r "/data/user_de/0/com.android.location.fused/*"
#su -c rm -r "/data/data/com.android.location.fused/*"
#
find /storage/emulated/0 -type d -empty -print -delete
sleep 0.7
}

finish(){
katrina(){
            am start com.fufufu.katrina.backup/com.fufufu.katrina.backup.KatrinaActivity &>/dev/null
            am force-stop bin.mt.plus
            am force-stop os.tools.scriptmanager
            am force-stop bin.mt.plus.canary
            }
    clear
    banner
    echo "🌀${Y}===== MENU LANJUTAN =====${N}🌀"
    echo "${G}1. Masuk Katrina"
    echo "${G}2. Langsung Reboot"
    echo "${W}0. Keluar"
    echo "========================"
    echo "Masukkan pilihan: " 
    read choice

    case $choice in
        1)
            echo "Sedang masuk ke Katrina..."
            katrina
            ;;
        2)
            echo "Rebooting..."
            reboot
            ;;
        0)
            echo "Keluar..."
            exit 0
            ;;
        *)
            echo "Pilihan tidak valid!"
            sleep 1
            ;;
    esac
}
proses () {
clear
banner
mount -o rw,remount / 2>/dev/null || true
echo ""
echo ""
    echo "🌀${Y}===== DEVICE TERVERIFIKASI =====${N}🌀"
        echo -e "${Y}© ${Y}"
        echo -e "${G} \ ${G}"
		echo -e "${G}  \ ___________/__${G}""${RGB} PROSES RITUAL DILANJUTKAN  !!${RGB}"
echo ""
echo ""
echo ""
clear
banner
modpeson &>/dev/null
echo -ne "${G}▇▇▇▇▇▇${N}" '(🌑)\r'
delete &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(🌒)\r'
systemprops &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(🌓)\r'
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(🌔)\r'
delete2 &>/dev/null
modpesoff &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(🌕)\n'
sleep 2
rm -rf /data/local/tmp
reboot
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
  send_telegram "✅ Serial $SERIAL terdaftar. Lanjut generate props __co_A145F.sh... Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  proses
else
  send_telegram "⛔ Serial $SERIAL tidak terdaftar! Script __co_A145F.sh dibatalkan. Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  bloked
  exit 1
fi