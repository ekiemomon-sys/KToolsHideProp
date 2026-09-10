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

delete(){
#del
am force-stop com.lazada.android
rm -rf /storage/emulated/0/WhatsApp
rm -rf /storage/emulated/0/Android
rm -rf /storage/emulated/0/Pictures
rm -rf /storage/emulated/0/Tokopedia 
rm -rf /storage/emulated/0/Music  
rm -rf /storage/emulated/0/Musik  
rm -rf /storage/emulated/0/Tencent 
rm -rf /storage/emulated/0/.UTSystemConfig 
rm -rf /storage/emulated/0/.Uc2UTSystemConfig 
rm -rf /storage/emulated/0/.Uc2DataStorage 
rm -rf /storage/emulated/0/.gs_fs0 
rm -rf /storage/emulated/0/.gs_file 
rm -rf /storage/emulated/0/.face 
rm -rf /storage/emulated/0/.DataStorage 
rm -rf /storage/emulated/0/.config 
rm -rf /storage/emulated/0/.com.taobao.dp 
rm -rf /storage/emulated/0/shopeeID 
rm -rf /storage/emulated/0/cache
rm -f /storage/emulated/0/.cri 
rm -rf /storage/emulated/0/LOST.DIR/* 
rm -rf /storage/emulated/0/cache/*.* 
rm -rf /cache/*.apk 
rm -rf /cache/*.tmp 
rm -rf /data/backup/pending/*.tmp 
rm -rf /data/cache/*.* 
rm -rf /data/clipboard/* 
rm -rf /data/dalvik-cache/*.apk 
rm -rf /data/dalvik-cache/*.tmp 
rm -rf /data/dontpanic/*.tmp 
rm -rf /data/kernelpanics/*.tmp 
rm -rf /data/last_alog 
rm -rf /data/last_kmsg 
rm -rf /data/log/* 
rm -rf /data/mlog/* 
rm -rf /data/system/dropbox/* 
rm -rf /data/system/usagestats/* 
rm -rf /data/tombstones/* 
rm -rf /data/*.log 
rm -rf /data/log/*        
find /storage/emulated/0/ -type d -empty -print -delete
}
	                      
systemprops() {
	
mount -o rw,remount /
mount -o rw,remount /dev/block/platform/soc/c0c4000.sdhci/by-name/vendor

mkdir /data/local/tmp
dir=/data/local/tmp/system.prop
dirr=/data/local/tmp/post-fs-data.sh
diral=/data/adb/modules/xkatrina_snstv_prps/system.prop
dirart=/data/adb/modules/KToolsHidePropsConf/system.prop
dirsym=/data/adb/modules/xkatrina_snstv_prps/post-fs-data.sh
dirartt=/data/adb/modules/KToolsHidePropsConf/post-fs-data.sh

model="CPH2481"
kt_model=${model[$RANDOM % ${#model[@]} ]}
kt_manufacturer=("OPPO")
kt_names1=("CPH2481")
kt_names=${kt_names1[$RANDOM % ${#kt_names1[@]} ]}
kt_devices=("OP5709L1")
kt_incremental="T.R4T2.130cc33_1"
kt_version1=("13" "14" "15" "16" "19")
kt_version=${kt_version1[$RANDOM % ${#kt_version1[@]} ]}
kt1=("RP1A.190$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -3).0$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -2)" "RP1A.200$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -3).0$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -2)" "RP1A.210$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -3).0$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -2)" "RP1A.220$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -3).0$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -2)" "SP1A.190$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -3).0$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -2)" "SP1A.200$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -3).0$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -2)" "SP1A.210$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -3).0$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -2)" "SP1A.220$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -3).0$(head -11 /dev/urandom | tr -cd '1-9' | cut -c -2)")
kt_buildid=${kt1[$RANDOM % ${#kt1[@]} ]}
kt_phone="KT-Family $kt_model"
utc="166943$(head -3 /dev/urandom | tr -cd '0123456789' | cut -c -4)"
utc1=$utc
brnd="$(head -3 /dev/urandom | tr -cd 'A-Z3-9' | cut -c -5)"
bot="$(head -3 /dev/urandom | tr -cd 'bcdfghjklmpqrstvwxyz' | cut -c -2)$(head -3 /dev/urandom | tr -cd 'A-Z' | cut -c -4)$(head -2 /dev/urandom | tr -cd '0123' | cut -c -1)$(head -4 /dev/urandom | tr -cd 'AUIeO' | cut -c -2)"
user="root"
prod="$(head -2 /dev/urandom | tr -cd '0123' | cut -c -1)$(head -2 /dev/urandom | tr -cd 'bcdfghjklmpqrstvwxyz' | cut -c -2)$(head -1 /dev/urandom | tr -cd 'A-Z' | cut -c -2)$(head -2 /dev/urandom | tr -cd '0123' | cut -c -1)$(head -1 /dev/urandom | tr -cd 'A-Z' | cut -c -2)"
board=sdm$(head -3 /dev/urandom | tr -cd '123456789' | cut -c -3)
flovr="$(head -1 /dev/urandom | tr -cd 'A-Z' | cut -c -2)$(head -3 /dev/urandom | tr -cd 'a-z' | cut -c -4)$(head -2 /dev/urandom | tr -cd 'A-Z' | cut -c -1)$(head -2 /dev/urandom | tr -cd '0123' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'a-z' | cut -c -4)"
hardware="$(head -1 /dev/urandom | tr -cd 'A-Z' | cut -c -2)$(head -3 /dev/urandom | tr -cd 'a-z' | cut -c -4)$(head -2 /dev/urandom | tr -cd 'A-Z' | cut -c -1)$(head -2 /dev/urandom | tr -cd '0123' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'a-z' | cut -c -4)"
number=("01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12")
number1="$(head -3 /dev/urandom | tr -cd '0123' | cut -c -2)"
number2="$(head -3 /dev/urandom | tr -cd '0123' | cut -c -2)"
angka3="$(head -3 /dev/urandom | tr -cd '123456789' | cut -c -1)"
angka2="$(head -3 /dev/urandom | tr -cd '123456789' | cut -c -3)"
hr=("Mon" "Tue" "Wed" "Thu" "Fri" "Sat" "Sun")
tg=("Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov")
th=("2023" "2023")
wib=("+07" "UTC+07")
host=("VPHLR216" "dg02_pool03-kvm297" "dg02_pool03-kvm49" "dg02_pool03-kvm133" "kpfj12.cbf.corp.google.com" "mcrd1-19" "SWDK6603L" "SWHE0302" "instance-2" "comsz01110017" "comdg01146093" "Mz-Builder-L21" "si-ch2bld3" "pangu-build-component-system-20753-bzcz6-wwhjp-x4w8w" "zhongke-build02" "us01-fwbuild-05p")
kt_host="${host[$RANDOM % ${#host[@]} ]}"
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
fpp="$kt_manufacturer/$kt_names/$kt_devices:$kt_version/$kt_buildid/$kt_incremental:user/release-keys"

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
echo "# MagiskHide Props Config" >> $dir
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
echo "ro.build.description=$kt_names-user $kt_version $kt_buildid $kt_incremental release-keys" >> $dir
echo "ro.product.name=$kt_names" >> $dir
echo "ro.product.system.name=$kt_names" >> $dir
echo "ro.product.vendor.name=$kt_names" >> $dir
echo "ro.product.product.name=$kt_names" >> $dir
echo "ro.product.product.name=$kt_names" >> $dir
echo "ro.product.odm.name=$kt_names" >> $dir
echo "ro.product.system_ext.name=$kt_names" >> $dir
echo "ro.product.device=$kt_devices" >> $dir
echo "ro.product.system.device=$kt_devices" >> $dir
echo "ro.product.vendor.device=$kt_devices" >> $dir
echo "ro.product.product.device=$kt_devices" >> $dir
echo "ro.product.product.device=$kt_devices" >> $dir
echo "ro.product.odm.device=$kt_devices" >> $dir
echo "ro.product.system_ext.device=$kt_devices" >> $dir
echo "ro.build.version.release=$kt_version" >> $dir
echo "ro.system.build.version.release=$kt_version" >> $dir
echo "ro.vendor.build.version.release=$kt_version" >> $dir
echo "ro.product.build.version.release=$kt_version" >> $dir
echo "ro.odm.build.version.release=$kt_version" >> $dir
echo "ro.system_ext.build.version.release=$kt_version" >> $dir
echo "ro.build.id=$kt_buildid" >> $dir
echo "ro.system.build.id=$kt_buildid" >> $dir
echo "ro.vendor.build.id=$kt_buildid" >> $dir
echo "ro.product.build.id=$kt_buildid" >> $dir
echo "ro.odm.build.id=$kt_buildid" >> $dir
echo "ro.system_ext.build.id=$kt_buildid" >> $dir
echo "ro.build.version.incremental=$kt_incremental" >> $dir
echo "ro.system.build.version.incremental=$kt_incremental" >> $dir
echo "ro.vendor.build.version.incremental=$kt_incremental" >> $dir
echo "ro.product.build.version.incremental=$kt_incremental" >> $dir
echo "ro.odm.build.version.incremental=$kt_incremental" >> $dir
echo "ro.system_ext.build.version.incremental=$kt_incremental" >> $dir
echo "ro.build.display.id=$kt_buildid" >> $dir
echo "ro.build.version.sdk=30" >> $dir
echo "ro.system.build.version.sdk=30" >> $dir
echo "ro.vendor.build.version.sdk=30" >> $dir
echo "ro.product.build.version.sdk=30" >> $dir
echo "ro.odm.build.version.sdk=30" >> $dir
echo "ro.system_ext.build.version.sdk=30" >> $dir
echo "ro.product.manufacturer=$kt_manufacturer" >> $dir
echo "ro.product.system.manufacturer=$kt_manufacturer" >> $dir
echo "ro.product.vendor.manufacturer=$kt_manufacturer" >> $dir
echo "ro.product.product.manufacturer=$kt_manufacturer" >> $dir
echo "ro.product.product.manufacturer=$kt_manufacturer" >> $dir
echo "ro.product.odm.manufacturer=$kt_manufacturer" >> $dir
echo "ro.product.system_ext.manufacturer=$kt_manufacturer" >> $dir
echo "ro.product.model=$kt_model" >> $dir
echo "ro.product.system.model=$kt_model" >> $dir
echo "ro.vendor.product.model=$kt_model" >> $dir
echo "ro.product.vendor.model=$kt_model" >> $dir
echo "ro.product.product.model=$kt_model" >> $dir
echo "ro.product.product.model=$kt_model" >> $dir
echo "ro.product.odm.model=$kt_model" >> $dir
echo "ro.product.system_ext.model=$kt_model" >> $dir
echo "ro.build.type=user" >> $dir
echo "ro.build.user=$user" >> $dir
echo "ro.build.host=$kt_host" >> $dir
echo "ro.build.tags=release-keys" >> $dir
echo "ro.build.flavor=$kt_names-user" >> $dir
echo "ro.product.brand=$brnd" >> $dir
echo "ro.product.system.brand=$brnd" >> $dir
echo "ro.product.vendor.brand=$brnd" >> $dir
echo "ro.product.product.brand=$brnd" >> $dir
echo "ro.product.product.brand=$brnd" >> $dir
echo "ro.product.odm.brand=$brnd" >> $dir
echo "ro.product.system_ext.brand=$brnd" >> $dir
echo "ro.bootloader=$bot" >> $dir
echo "ro.build.user=$user" >> $dir
echo "ro.build.product=$prod" >> $dir
echo "ro.product.board=$board" >> $dir
echo "ro.build.PDA=$kt_incremental" >> $dir
echo "ro.build.changelist=25957887" >> $dir
echo "ro.product_ship=true" >> $dir
echo "ro.build.official.release=true" >> $dir
echo "ro.build.official.developer=false" >> $dir
echo "ro.build.2ndbrand=false" >> $dir
echo "ro.config.rm_preload_enabled=1" >> $dir
echo "ro.build.characteristics=phone" >> $dir

#copy system.prop
sleep 1
cp -r -f /data/local/tmp/system.prop $diral
cp -r -f /data/local/tmp/system.prop $dirart

echo -e "${C}√ Berhasil √${N}"
clear

#MULAI SYSTEM.PROP
clear
banner
echo -e "${Y}SCRIPT MEMBUAT post-fs-data.sh OTOMATIS ${N}"
echo ""
echo ""
#mount -o rw,remount /
sleep 0.2
mount -o rw,remount /
rm -f /data/local/tmp/post-fs-data.sh
sleep 1
#membuat build prop
echo -e "${Y}Membuat post-fs-data.sh...${N}"
sleep 1
echo "#!/system/bin/sh" >> $dirr
echo "" >> $dirr
echo "MODDIR="${0%/*}"" >> $dirr
echo "MODNAME="${MODDIR##*/}"" >> $dirr
echo "MAGISKTMP="$(magisk --path)" || MAGISKTMP=/sbin" >> $dirr
echo "" >> $dirr
echo "if [ "$(magisk -V)" -lt 26302 ] || [ "$(/data/adb/ksud -V)" -lt 10818 ]; then" >> $dirr
echo "  touch "$MODDIR/disable"" >> $dirr
echo "fi" >> $dirr
echo "" >> $dirr
echo "if [ ! -e "$MAGISKTMP/.magisk/mirror/sepolicy.rules/$MODNAME/sepolicy.rule" ] && [ ! -e "$MAGISKTMP/.magisk/sepolicy.rules/$MODNAME/sepolicy.rule" ]; then" >> $dirr
echo "    magiskpolicy --live --apply "$MODDIR/sepolicy.rule"" >> $dirr
echo "    ksud sepolicy apply "$MODDIR/sepolicy.rule"" >> $dirr
echo "fi" >> $dirr
echo "" >> $dirr
echo "ksud sepolicy apply "$MODDIR/sepolicy.rule"" >> $dirr
echo "" >> $dirr
echo ". "$MODDIR/resetprop.sh"" >> $dirr
echo "" >> $dirr
echo "# these props must be set in post-fs-data" >> $dirr
echo "# clear out lineage and aosp words" >> $dirr
echo "# replace:" >> $dirr
echo "#    userdebug -> user" >> $dirr
echo "#    test-keys -> release-keys" >> $dirr
echo "" >> $dirr
echo "" >> $dirr
echo "### KT-ID" >> $dirr
echo "#" >> $dirr
echo "check_resetprop ro.bootimage.build.date $tgl" >> $dirr
echo "check_resetprop ro.bootimage.build.date.utc $utc1" >> $dirr
echo "check_resetprop ro.bootimage.build.fingerprint $fpp" >> $dirr
echo "check_resetprop ro.bootloader $kt_incremental" >> $dirr
echo "check_resetprop ro.build.date $tgl" >> $dirr
echo "check_resetprop ro.build.date.utc $utc1" >> $dirr
echo "check_resetprop ro.build.description $kt_names-user $kt_version $kt_buildid $kt_incremental release-keys" >> $dirr
echo "check_resetprop ro.build.displayid $kt_names-user $kt_version $kt_buildid $kt_incremental release-keys" >> $dirr
echo "check_resetprop ro.build.fingerprint $fpp" >> $dirr
echo "#" >> $dirr
echo "check_resetprop ro.build.host $kt_host" >> $dirr
echo "check_resetprop ro.build.id $kt_buildid" >> $dirr
echo "check_resetprop ro.build.official.release $kt_version" >> $dirr
echo "check_resetprop ro.build.product $kt_names" >> $dirr
echo "check_resetprop ro.build.user $user" >> $dirr
echo "check_resetprop ro.build.version.incremental $kt_incremental" >> $dirr
echo "check_resetprop ro.build.version.release $kt_version" >> $dirr
echo "check_resetprop ro.ceos.build.date $tgl" >> $dirr
echo "check_resetprop ro.ceos.device $kt_devices" >> $dirr
echo "check_resetprop ro.ceos.fingerprint $fpp" >> $dirr
echo "check_resetprop ro.hardware $hardware" >> $dirr
echo "check_resetprop ro.odm.build.date $tgl" >> $dirr
echo "check_resetprop ro.odm.build.date.utc $utc1" >> $dirr
echo "check_resetprop ro.odm.build.fingerprint $fpp" >> $dirr
echo "check_resetprop ro.odm.build.id $kt_buildid" >> $dirr
echo "check_resetprop ro.odm.build.version.incremental $kt_incremental" >> $dirr
echo "check_resetprop ro.odm.build.version.release $kt_version" >> $dirr
echo "check_resetprop ro.product.board $board" >> $dirr
echo "check_resetprop ro.product.brand $brnd" >> $dirr
echo "check_resetprop ro.product.build.date $tgl" >> $dirr
echo "check_resetprop ro.product.build.date.utc $utc1" >> $dirr
echo "check_resetprop ro.product.build.fingerprint $fpp" >> $dirr
echo "check_resetprop ro.product.build.id $kt_buildid" >> $dirr
echo "check_resetprop ro.product.build.version.incremental $kt_incremental" >> $dirr
echo "check_resetprop ro.product.build.version.release $kt_version" >> $dirr
echo "check_resetprop ro.product.device $kt_devices" >> $dirr
echo "check_resetprop ro.product.manufacturer $kt_manufacturer" >> $dirr
echo "check_resetprop ro.product.model $kt_model" >> $dirr
echo "check_resetprop ro.product.name $kt_names" >> $dirr
echo "check_resetprop ro.product.odm.brand $brnd" >> $dirr
echo "check_resetprop ro.product.odm.device $kt_devices" >> $dirr
echo "check_resetprop ro.product.odm.manufacturer $kt_manufacturer" >> $dirr
echo "check_resetprop ro.product.odm.model $kt_model" >> $dirr
echo "check_resetprop ro.product.odm.name $kt_names" >> $dirr
echo "check_resetprop ro.product.product.brand $brnd" >> $dirr
echo "check_resetprop ro.product.product.device $kt_devices" >> $dirr
echo "check_resetprop ro.product.product.manufacturer $kt_manufacturer" >> $dirr
echo "check_resetprop ro.product.product.model $kt_model" >> $dirr
echo "check_resetprop ro.product.product.name $kt_names" >> $dirr
echo "check_resetprop ro.product.system.brand $brnd" >> $dirr
echo "check_resetprop ro.product.system.device $kt_devices" >> $dirr
echo "check_resetprop ro.product.system.manufacturer $kt_manufacturer" >> $dirr
echo "check_resetprop ro.product.system.model $kt_model" >> $dirr
echo "check_resetprop ro.product.system.name $kt_names" >> $dirr
echo "check_resetprop ro.product.system_ext.brand $brnd" >> $dirr
echo "check_resetprop ro.product.system_ext.device $kt_devices" >> $dirr
echo "check_resetprop ro.product.system_ext.manufacturer $kt_manufacturer" >> $dirr
echo "check_resetprop ro.product.system_ext.model $kt_model" >> $dirr
echo "check_resetprop ro.product.system_ext.name $kt_names" >> $dirr
echo "check_resetprop ro.product.vendor.brand $brnd" >> $dirr
echo "check_resetprop ro.product.vendor.device $kt_devices" >> $dirr
echo "check_resetprop ro.product.vendor.manufacturer $kt_manufacturer" >> $dirr
echo "check_resetprop ro.product.vendor.model $kt_model" >> $dirr
echo "check_resetprop ro.product.vendor.name $kt_names" >> $dirr
echo "check_resetprop ro.system.build.date $tgl" >> $dirr
echo "check_resetprop ro.system.build.date.utc $utc1" >> $dirr
echo "check_resetprop ro.system.build.fingerprint $fpp" >> $dirr
echo "check_resetprop ro.system.build.id $kt_buildid" >> $dirr
echo "check_resetprop ro.system.build.version.incremental $kt_incremental" >> $dirr
echo "check_resetprop ro.system.build.version.release $kt_version" >> $dirr
echo "check_resetprop ro.system_ext.build.date $tgl" >> $dirr
echo "check_resetprop ro.system_ext.build.date.utc $utc1" >> $dirr
echo "check_resetprop ro.system_ext.build.fingerprint $fpp" >> $dirr
echo "check_resetprop ro.system_ext.build.id $kt_buildid" >> $dirr
echo "check_resetprop ro.system_ext.build.version.incremental $kt_incremental" >> $dirr
echo "check_resetprop ro.system_ext.build.version.release $kt_version" >> $dirr
echo "check_resetprop ro.vendor.build.date $tgl" >> $dirr
echo "check_resetprop ro.vendor.build.date.utc $utc1" >> $dirr
echo "check_resetprop ro.vendor.build.fingerprint $fpp" >> $dirr
echo "check_resetprop ro.vendor.build.id $kt_buildid" >> $dirr
echo "check_resetprop ro.vendor.build.version.incremental $kt_incremental" >> $dirr
echo "check_resetprop ro.vendor.build.version.release $kt_version" >> $dirr
echo "" >> $dirr
echo "# Fix Lineage and Debugging props" >> $dirr
echo "replace_value_resetprop ro.build.description "aosp_" """ >> $dirr
echo "replace_value_resetprop ro.build.fingerprint "aosp_" """ >> $dirr
echo "replace_value_resetprop ro.build.flavor "aosp_" """ >> $dirr
echo "replace_value_resetprop ro.product.bootimage.name "aosp_" """ >> $dirr
echo "replace_value_resetprop ro.product.name "aosp_" """ >> $dirr
echo "" >> $dirr
echo "replace_value_resetprop ro.build.description "lineage_" """ >> $dirr
echo "replace_value_resetprop ro.build.fingerprint "lineage_" """ >> $dirr
echo "replace_value_resetprop ro.build.flavor "lineage_" """ >> $dirr
echo "replace_value_resetprop ro.product.bootimage.name "lineage_" """ >> $dirr
echo "replace_value_resetprop ro.product.name "lineage_" """ >> $dirr
echo "" >> $dirr
echo "replace_value_resetprop ro.build.description test-keys release-keys" >> $dirr
echo "replace_value_resetprop ro.build.description userdebug user" >> $dirr
echo "replace_value_resetprop ro.build.fingerprint test-keys release-keys" >> $dirr
echo "replace_value_resetprop ro.build.fingerprint userdebug user" >> $dirr
echo "replace_value_resetprop ro.build.flavor userdebug user" >> $dirr
echo "" >> $dirr
echo "for prefix in system vendor system_ext product oem odm vendor_dlkm odm_dlkm bootimage; do" >> $dirr
echo "    check_resetprop ro.${prefix}.build.tags release-keys" >> $dirr
echo "    check_resetprop ro.${prefix}.build.type user" >> $dirr
echo "    replace_value_resetprop ro.${prefix}.build.description test-keys release-keys" >> $dirr
echo "    replace_value_resetprop ro.${prefix}.build.description userdebug user" >> $dirr
echo "    replace_value_resetprop ro.${prefix}.build.fingerprint test-keys release-keys" >> $dirr
echo "    replace_value_resetprop ro.${prefix}.build.fingerprint userdebug user" >> $dirr
echo "    replace_value_resetprop ro.${prefix}.build.description "aosp_" """ >> $dirr
echo "    replace_value_resetprop ro.${prefix}.build.fingerprint "aosp_" """ >> $dirr
echo "    replace_value_resetprop ro.product.${prefix}.name "aosp_" """ >> $dirr
echo "    replace_value_resetprop ro.${prefix}.build.description "lineage_" """ >> $dirr
echo "    replace_value_resetprop ro.${prefix}.build.fingerprint "lineage_" """ >> $dirr
echo "    replace_value_resetprop ro.product.${prefix}.name "lineage_" """ >> $dirr
echo "  # check_resetprop ro.${prefix}.build.date.utc $(date +"%s")" >> $dirr
echo "done" >> $dirr
echo "" >> $dirr
echo "# check_resetprop ro.build.date.utc $utc1" >> $dirr
echo "# check_resetprop ro.build.version.security_patch $sec" >> $dirr
echo "# check_resetprop ro.vendor.build.security_patch $sec" >> $dirr

#copy post-fs-data.sh
sleep 1
cp -r -f /data/local/tmp/post-fs-data.sh $dirsym
cp -r -f /data/local/tmp/post-fs-data.sh $dirartt

#GANTI DEVICE SETTINGAN
FURANDOM=$(head -3 /dev/urandom | tr -cd 'A-Z' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'aeiou' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'bcdfghjklmnpqrstvwxyz' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'aeiou' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'bcdfghjklmnpqrstvwxyz' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'aeiou' | cut -c -1)
FUBTNAME=$(grep -n bluetooth_name /data/system/users/0/settings_secure.xml | grep -o 'value=".*"*' | cut -d '"' -f2)
FUBTNAMEFB=$(grep -n bluetooth_name /data/system/users/0/settings_secure.xml.fallback | grep -o 'value=".*"*' | cut -d '"' -f2)
FUDVNAME=$(grep -n device_name /data/system/users/0/settings_global.xml | grep -o 'value=".*"*' | cut -d '"' -f2)
FUDVNAMEFB=$(grep -n device_name /data/system/users/0/settings_global.xml.fallback | grep -o 'value=".*"*' | cut -d '"' -f2)

settings delete secure advertising_id
echo "settings delete secure advertising_id"
settings delete secure android_id
echo "settings delete secure android_id"

sed -i '/Name =/d' /data/misc/bluedroid/bt_config.conf
echo "Name = $FURANDOM $kt_phone" >> /data/misc/bluedroid/bt_config.conf

sed -i "s/$FUBTNAME/$FURANDOM $kt_phone/g" /data/system/users/0/settings_secure.xml

if [ -f /data/system/users/0/settings_secure.xml.fallback ]; then 
echo "Edo, fallback not found"
else
sed -i "s/$FUBTNAMEFB/$FURANDOM $kt_phone/g" /data/system/users/0/settings_secure.xml.fallback
fi

echo "Ganti nama bluetooth"
sed -i "s/$FUDVNAME/$kt_phone/g" /data/system/users/0/settings_global.xml
if [ -f /data/system/users/0/settings_global.xml.fallback ]; then 
echo "Edo, fallback not found"
else
sed -i "s/$FUDVNAMEFB/$FURANDOM $kt_phone/g" /data/system/users/0/settings_global.xml.fallback
fi

echo "Ganti nama device"

SCRIPTS_FILE=/data/adb/modules/KToolsHidePropsConf/system.prop
if [ ! -f "$SCRIPTS_FILE" ]; then SCRIPTS_FILE=/data/adb/modules/KToolsHidePropsConf/system.prop;
fi
cp "$SCRIPTS_FILE" /data/adb/modules/magisk-drm-disabler/system.prop

SCRIPTS_FILE=/data/adb/modules/xkatrina_snstv_prps/system.prop
if [ ! -f "$SCRIPTS_FILE" ]; then SCRIPTS_FILE=/data/adb/modules/xkatrina_snstv_prps/system.prop;
fi
cp "$SCRIPTS_FILE" /data/adb/modules/magisk-drm-disabler/system.prop

mount -o rw,remount /
mount -o rw,remount /dev/block/platform/soc/c0c4000.sdhci/by-name/vendor
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
modpeson &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇${N}" '(13%)\r'
delete &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(39%)\r'
sleep 0.2 &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(57%)\r'
systemprops &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(81%)\r'
sleep 0.1 &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(100%)\n'
            rm -rf /data/local/tmp/*
            mount -o ro,remount / 2>/dev/null || true
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
  send_telegram "✅ Serial $SERIAL terdaftar. Lanjut generate props __co_CPH2481.sh... Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  proses
else
  send_telegram "⛔ Serial $SERIAL tidak terdaftar! Script __co_CPH2481.sh dibatalkan. Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  bloked
  exit 1
fi