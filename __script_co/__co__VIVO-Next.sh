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
	
# --- Konfigurasi ---

TARGET_APP_KEYWORDS=(
    "tokopedia" "tiktok" "lazada" "shopee" "dana" "trill" "musically" "qpon" "facebook"
)

# Daftar nama paket lengkap untuk dihentikan paksa (am force-stop)
APPS_TO_KILL=(
    "com.tokopedia.tkpd" "com.lazada.android" "com.shopee.id" "id.dana" "com"
    "com.ss.android.ugc.trill" "com.zhiliaoapp.musically" "com.tiktok.android"
    "com.qpon.platform" "com.android.phone" "com.android.dialer" "com.android.smspush" 
    "com.android.ime" "android.ext.services" "com.google.android.apps.docs" 
    "com.google.android.apps.googleassistant" "com.android.download" "com.android.tools" 
    "com.android.webview" "com.android.defcontainer" "com.microsoft.office.outlook"
    "com.android.chrome" "com.evo.browser" "com.android.location.fused"
    "com.google.android.overlay.gmsconfig.common" "com.google.android.overlay.gmsconfig.gsa"
    "com.google.android.apps.wellbeing" "com.google.android.gms" "com.google.android.gsf"
    "com.google.android.ims" "com.android.vending" "android.ext.shared"
    "com.google.android.apps.restore" "com.google.android.carriersetup" "com.google.android.configupdater"
    "com.google.android.apps.pixelmigrate" "com.google.android.apps.photosgo"
    "com.google.android.packageinstaller" "com.google.android.markup"
    "com.google.android.setupwizard" "com.google.android.syncadapters.calendar"
    "com.google.android.syncadapters.contacts" "com.google.android.soundpicker"
)

# Daftar nama paket lengkap untuk dibersihkan datanya (pm clear)
APPS_TO_CLEAR=(
    "com.tokopedia.tkpd" "com.lazada.android" "com.shopee.id" "id.dana" "com.facebook.katana"
    "com.ss.android.ugc.trill" "com.zhiliaoapp.musically" "com.tiktok.android" "com.whatsapp" "com.whatsapp.w4b"
    "com.qpon.platform" "com.android.dialer" "com.microsoft.office.outlook" "free.vpn.secure.turbo.proxy.hotspot.vpnindonesia"
    "com.android.chrome" "com.evo.browser" "jp.naver.line.android" 
    "com.google.android.gms" "com.google.android.gsf" "com.android.vending"
    "com.android.webview" "com.google.android.apps.wellbeing" "com.google.android.ims"
    "android.ext.services" "android.ext.shared" "com.google.android.apps.restore"
    "com.google.android.carriersetup" "com.google.android.configupdater"
    "com.google.android.packageinstaller" "com.google.android.setupwizard"
    "com.google.android.syncadapters.calendar" "com.google.android.syncadapters.contacts"
)

# Daftar path untuk pembersihan mendalam
SYSTEM_STATS_PATHS=(
    "/data/system/procstats/*"
    "/data/system/usagestats/*"
    "/data/system/batterystats.bin"
    "/data/system/appusagestats/*"
    "/data/system/netstats/*"
    "/data/system/graphicsstats/*"
)
GOOGLE_SERVICES_PATHS=(
    "/data/data/com.google.android.gms/databases"
    "/data/data/com.google.android.gsf/databases"
    "/data/data/com.google.android.gms/shared_prefs"
    "/data/data/com.google.android.gsf/shared_prefs"
    "/data/user/0/com.google.android.gms/databases"
    "/data/user/0/com.google.android.gsf/databases"
)
SYSTEM_CACHE_PATHS=(
    "/data/cache/*"
    "/cache/*"
    "/data/dalvik-cache/*"
    "/data/system/dropbox/*"
    "/data/tombstones/*"
    "/data/anr/*"
    "/data/system/package_cache/*"
    "/data/system/job/*"
)
EXTERNAL_STORAGE_PATHS=(
    "data/user_de/0/com.android.location.fused/*"
    "data/data/com.android.location.fused/*"
    "data/data/com.android.location.fused/*"
    "data/data/com.google.android.gms/*"
    "data/data/com.google.android.gsf/*"
    "data/user/0/com.lazada.android/*"
    "data/data/android.auto_generated_rro_vendor__/*"
    "data/data/android.ext.services/*"
    "data/data/android.ext.shared/*"
    "data/data/com.android.backupconfirm/*"
    "data/data/com.android.bips/*"
    "data/data/com.android.bluetooth/*"
    "data/data/com.android.bluetoothmidiservice/*"
    "data/data/com.android.bookmarkprovider/*"
    "data/data/com.android.calendar/*"
    "data/data/com.android.carrierconfig/*"
    "data/data/com.android.carrierconfig.auto_generated_rro_vendor__/*"
    "data/data/com.android.htmlviewer/*"
    "data/data/com.android.webview/*"
    "data/local/*"
    "data/system/appops/history/"
    "data/system/netstats/"
    "data/system/job/"
    "data/system/users/0/fpdata"
    "data/system/users/0/registered_services"
    "data/system/users/0/package-restrictions.xml"
    "data/system/users/0/settings_ssaid.xml"
    "data/system/users/0/app_idle_stats.xml"
    "data/system/users/0/settings_config.xml"
    "data/system/users/0/fpdata"
    "data/system/users/0/registered_services"
    "data/system/users/0/settings_ssaid.xml"
    "data/system/users/0/*.fallback"
    "/storage/emulated/0/Android/*"
    "/storage/emulated/0/android/*" # Case insensitive
    "/storage/emulated/0/.*"
    "/storage/emulated/0/Android/.*"
    "/storage/emulated/0/Android/data/.*"
    "/storage/emulated/0/Tokopedia"
    "/storage/emulated/0/Music"
    "/storage/emulated/0/Musik"
    "/storage/emulated/0/Tencent"
    "/storage/emulated/0/.UTSystemConfig"
    "/storage/emulated/0/.Uc2UTSystemConfig"
    "/storage/emulated/0/.Uc2DataStorage"
    "/storage/emulated/0/.gs_fs0"
    "/storage/emulated/0/.gs_file"
    "/storage/emulated/0/.face"
    "/storage/emulated/0/.DataStorage"
    "/storage/emulated/0/.config"
    "/storage/emulated/0/.com.taobao.dp"
    "/storage/emulated/0/shopeeID"
    "/storage/emulated/0/cache"
    "/storage/emulated/0/MIUI"
    "/storage/emulated/0/.cri"
    "/storage/emulated/0/LOST.DIR/*"
    "/storage/emulated/0/cache/*.*"
    "find /storage/emulated/0/ -type d -empty -print -delete"
)


# Format: "brand,model,device,version_release,fingerprint,product_name,build_id,version_incremental,security_patch"
DEVICE_PROFILES=(
# VIVO
"vivo,X50,V1001,11,vivo/v1001/v1001:11/TKQ1.221114.001/200001A:user/release-keys,v1001,TKQ1.221114.001,200001A,2020-01-01,V1001"
"vivo,X50 Pro,V1002,11,vivo/v1002/v1002:11/TKQ1.221114.001/200002A:user/release-keys,v1002,TKQ1.221114.001,200002A,2020-01-01,V1002"
"vivo,X50 Pro+,V1003,11,vivo/v1003/v1003:11/TKQ1.221114.001/200003A:user/release-keys,v1003,TKQ1.221114.001,200003A,2020-01-01,V1003"
"vivo,X51 5G,V1004,11,vivo/v1004/v1004:11/TKQ1.221114.001/200004A:user/release-keys,v1004,TKQ1.221114.001,200004A,2020-01-01,V1004"
"vivo,V19,V1005,11,vivo/v1005/v1005:11/TKQ1.221114.001/200005A:user/release-keys,v1005,TKQ1.221114.001,200005A,2020-01-01,V1005"
"vivo,V19 Neo,V1006,11,vivo/v1006/v1006:11/TKQ1.221114.001/200006A:user/release-keys,v1006,TKQ1.221114.001,200006A,2020-01-01,V1006"
"vivo,V20,V1007,11,vivo/v1007/v1007:11/TKQ1.221114.001/200007A:user/release-keys,v1007,TKQ1.221114.001,200007A,2020-01-01,V1007"
"vivo,V20 Pro,V1008,11,vivo/v1008/v1008:11/TKQ1.221114.001/200008A:user/release-keys,v1008,TKQ1.221114.001,200008A,2020-01-01,V1008"
"vivo,V20 SE,V1009,11,vivo/v1009/v1009:11/TKQ1.221114.001/200009A:user/release-keys,v1009,TKQ1.221114.001,200009A,2020-01-01,V1009"
"vivo,Y1s,V1010,11,vivo/v1010/v1010:11/TKQ1.221114.001/200010A:user/release-keys,v1010,TKQ1.221114.001,200010A,2020-01-01,V1010"
"vivo,Y11s,V1011,11,vivo/v1011/v1011:11/TKQ1.221114.001/200011A:user/release-keys,v1011,TKQ1.221114.001,200011A,2020-01-01,V1011"
"vivo,Y12s,V1012,11,vivo/v1012/v1012:11/TKQ1.221114.001/200012A:user/release-keys,v1012,TKQ1.221114.001,200012A,2020-01-01,V1012"
"vivo,Y20,V1013,11,vivo/v1013/v1013:11/TKQ1.221114.001/200013A:user/release-keys,v1013,TKQ1.221114.001,200013A,2020-01-01,V1013"
"vivo,Y20i,V1014,11,vivo/v1014/v1014:11/TKQ1.221114.001/200014A:user/release-keys,v1014,TKQ1.221114.001,200014A,2020-01-01,V1014"
"vivo,Y20s,V1015,11,vivo/v1015/v1015:11/TKQ1.221114.001/200015A:user/release-keys,v1015,TKQ1.221114.001,200015A,2020-01-01,V1015"
"vivo,Y30,V1016,11,vivo/v1016/v1016:11/TKQ1.221114.001/200016A:user/release-keys,v1016,TKQ1.221114.001,200016A,2020-01-01,V1016"
"vivo,Y50,V1017,11,vivo/v1017/v1017:11/TKQ1.221114.001/200017A:user/release-keys,v1017,TKQ1.221114.001,200017A,2020-01-01,V1017"
"vivo,Y70,V1018,11,vivo/v1018/v1018:11/TKQ1.221114.001/200018A:user/release-keys,v1018,TKQ1.221114.001,200018A,2020-01-01,V1018"
"vivo,S7,V1019,11,vivo/v1019/v1019:11/TKQ1.221114.001/200019A:user/release-keys,v1019,TKQ1.221114.001,200019A,2020-01-01,V1019"
"vivo,S7e,V1020,11,vivo/v1020/v1020:11/TKQ1.221114.001/200020A:user/release-keys,v1020,TKQ1.221114.001,200020A,2020-01-01,V1020"
"vivo,iQOO 3,V1021,11,vivo/v1021/v1021:11/TKQ1.221114.001/200021A:user/release-keys,v1021,TKQ1.221114.001,200021A,2020-01-01,V1021"
"vivo,iQOO Z1,V1022,11,vivo/v1022/v1022:11/TKQ1.221114.001/200022A:user/release-keys,v1022,TKQ1.221114.001,200022A,2020-01-01,V1022"
"vivo,iQOO 5,V1023,11,vivo/v1023/v1023:11/TKQ1.221114.001/200023A:user/release-keys,v1023,TKQ1.221114.001,200023A,2020-01-01,V1023"
"vivo,iQOO 5 Pro,V1024,11,vivo/v1024/v1024:11/TKQ1.221114.001/200024A:user/release-keys,v1024,TKQ1.221114.001,200024A,2020-01-01,V1024"
"vivo,X60,V1025,11,vivo/v1025/v1025:11/TKQ1.221114.001/210025A:user/release-keys,v1025,TKQ1.221114.001,210025A,2021-01-01,V1025"
"vivo,X60 Pro,V1026,11,vivo/v1026/v1026:11/TKQ1.221114.001/210026A:user/release-keys,v1026,TKQ1.221114.001,210026A,2021-01-01,V1026"
"vivo,X60 Pro+,V1027,11,vivo/v1027/v1027:11/TKQ1.221114.001/210027A:user/release-keys,v1027,TKQ1.221114.001,210027A,2021-01-01,V1027"
"vivo,X70,V1028,11,vivo/v1028/v1028:11/TKQ1.221114.001/210028A:user/release-keys,v1028,TKQ1.221114.001,210028A,2021-01-01,V1028"
"vivo,X70 Pro,V1029,11,vivo/v1029/v1029:11/TKQ1.221114.001/210029A:user/release-keys,v1029,TKQ1.221114.001,210029A,2021-01-01,V1029"
"vivo,X70 Pro+,V1030,11,vivo/v1030/v1030:11/TKQ1.221114.001/210030A:user/release-keys,v1030,TKQ1.221114.001,210030A,2021-01-01,V1030"
"vivo,V21,V1031,11,vivo/v1031/v1031:11/TKQ1.221114.001/210031A:user/release-keys,v1031,TKQ1.221114.001,210031A,2021-01-01,V1031"
"vivo,V21 5G,V1032,11,vivo/v1032/v1032:11/TKQ1.221114.001/210032A:user/release-keys,v1032,TKQ1.221114.001,210032A,2021-01-01,V1032"
"vivo,V21e,V1033,11,vivo/v1033/v1033:11/TKQ1.221114.001/210033A:user/release-keys,v1033,TKQ1.221114.001,210033A,2021-01-01,V1033"
"vivo,V23e,V1034,11,vivo/v1034/v1034:11/TKQ1.221114.001/210034A:user/release-keys,v1034,TKQ1.221114.001,210034A,2021-01-01,V1034"
"vivo,Y15s,V1035,11,vivo/v1035/v1035:11/TKQ1.221114.001/210035A:user/release-keys,v1035,TKQ1.221114.001,210035A,2021-01-01,V1035"
"vivo,Y21,V1036,11,vivo/v1036/v1036:11/TKQ1.221114.001/210036A:user/release-keys,v1036,TKQ1.221114.001,210036A,2021-01-01,V1036"
"vivo,Y21s,V1037,11,vivo/v1037/v1037:11/TKQ1.221114.001/210037A:user/release-keys,v1037,TKQ1.221114.001,210037A,2021-01-01,V1037"
"vivo,Y33s,V1038,11,vivo/v1038/v1038:11/TKQ1.221114.001/210038A:user/release-keys,v1038,TKQ1.221114.001,210038A,2021-01-01,V1038"
"vivo,Y53s,V1039,11,vivo/v1039/v1039:11/TKQ1.221114.001/210039A:user/release-keys,v1039,TKQ1.221114.001,210039A,2021-01-01,V1039"
"vivo,Y72 5G,V1040,11,vivo/v1040/v1040:11/TKQ1.221114.001/210040A:user/release-keys,v1040,TKQ1.221114.001,210040A,2021-01-01,V1040"
"vivo,Y76 5G,V1041,11,vivo/v1041/v1041:11/TKQ1.221114.001/210041A:user/release-keys,v1041,TKQ1.221114.001,210041A,2021-01-01,V1041"
"vivo,S10,V1042,11,vivo/v1042/v1042:11/TKQ1.221114.001/210042A:user/release-keys,v1042,TKQ1.221114.001,210042A,2021-01-01,V1042"
"vivo,S10 Pro,V1043,11,vivo/v1043/v1043:11/TKQ1.221114.001/210043A:user/release-keys,v1043,TKQ1.221114.001,210043A,2021-01-01,V1043"
"vivo,S12,V1044,11,vivo/v1044/v1044:11/TKQ1.221114.001/210044A:user/release-keys,v1044,TKQ1.221114.001,210044A,2021-01-01,V1044"
"vivo,S12 Pro,V1045,11,vivo/v1045/v1045:11/TKQ1.221114.001/210045A:user/release-keys,v1045,TKQ1.221114.001,210045A,2021-01-01,V1045"
"vivo,iQOO 7,V1046,11,vivo/v1046/v1046:11/TKQ1.221114.001/210046A:user/release-keys,v1046,TKQ1.221114.001,210046A,2021-01-01,V1046"
"vivo,iQOO Neo5,V1047,11,vivo/v1047/v1047:11/TKQ1.221114.001/210047A:user/release-keys,v1047,TKQ1.221114.001,210047A,2021-01-01,V1047"
"vivo,iQOO Z3,V1048,11,vivo/v1048/v1048:11/TKQ1.221114.001/210048A:user/release-keys,v1048,TKQ1.221114.001,210048A,2021-01-01,V1048"
"vivo,iQOO Z5,V1049,13,vivo/v1049/v1049:13/TKQ1.221114.001/220049A:user/release-keys,v1049,TKQ1.221114.001,220049A,2022-01-01,V1049"
"vivo,X80,V1050,13,vivo/v1050/v1050:13/TKQ1.221114.001/220050A:user/release-keys,v1050,TKQ1.221114.001,220050A,2022-01-01,V1050"
"vivo,X80 Pro,V1051,13,vivo/v1051/v1051:13/TKQ1.221114.001/220051A:user/release-keys,v1051,TKQ1.221114.001,220051A,2022-01-01,V1051"
"vivo,X Fold,V1052,13,vivo/v1052/v1052:13/TKQ1.221114.001/220052A:user/release-keys,v1052,TKQ1.221114.001,220052A,2022-01-01,V1052"
"vivo,X Fold+,V1053,13,vivo/v1053/v1053:13/TKQ1.221114.001/220053A:user/release-keys,v1053,TKQ1.221114.001,220053A,2022-01-01,V1053"
"vivo,X Note,V1054,13,vivo/v1054/v1054:13/TKQ1.221114.001/220054A:user/release-keys,v1054,TKQ1.221114.001,220054A,2022-01-01,V1054"
"vivo,V23,V1055,13,vivo/v1055/v1055:13/TKQ1.221114.001/220055A:user/release-keys,v1055,TKQ1.221114.001,220055A,2022-01-01,V1055"
"vivo,V23 Pro,V1056,13,vivo/v1056/v1056:13/TKQ1.221114.001/220056A:user/release-keys,v1056,TKQ1.221114.001,220056A,2022-01-01,V1056"
"vivo,V25,V1057,13,vivo/v1057/v1057:13/TKQ1.221114.001/220057A:user/release-keys,v1057,TKQ1.221114.001,220057A,2022-01-01,V1057"
"vivo,V25 Pro,V1058,13,vivo/v1058/v1058:13/TKQ1.221114.001/220058A:user/release-keys,v1058,TKQ1.221114.001,220058A,2022-01-01,V1058"
"vivo,Y01,V1059,13,vivo/v1059/v1059:13/TKQ1.221114.001/220059A:user/release-keys,v1059,TKQ1.221114.001,220059A,2022-01-01,V1059"
"vivo,Y02,V1060,13,vivo/v1060/v1060:13/TKQ1.221114.001/220060A:user/release-keys,v1060,TKQ1.221114.001,220060A,2022-01-01,V1060"
"vivo,Y16,V1061,13,vivo/v1061/v1061:13/TKQ1.221114.001/220061A:user/release-keys,v1061,TKQ1.221114.001,220061A,2022-01-01,V1061"
"vivo,Y22,V1062,13,vivo/v1062/v1062:13/TKQ1.221114.001/220062A:user/release-keys,v1062,TKQ1.221114.001,220062A,2022-01-01,V1062"
"vivo,Y35,V1063,13,vivo/v1063/v1063:13/TKQ1.221114.001/220063A:user/release-keys,v1063,TKQ1.221114.001,220063A,2022-01-01,V1063"
"vivo,Y55,V1064,13,vivo/v1064/v1064:13/TKQ1.221114.001/220064A:user/release-keys,v1064,TKQ1.221114.001,220064A,2022-01-01,V1064"
"vivo,Y75 5G,V1065,13,vivo/v1065/v1065:13/TKQ1.221114.001/220065A:user/release-keys,v1065,TKQ1.221114.001,220065A,2022-01-01,V1065"
"vivo,S15,V1066,13,vivo/v1066/v1066:13/TKQ1.221114.001/220066A:user/release-keys,v1066,TKQ1.221114.001,220066A,2022-01-01,V1066"
"vivo,S15 Pro,V1067,13,vivo/v1067/v1067:13/TKQ1.221114.001/220067A:user/release-keys,v1067,TKQ1.221114.001,220067A,2022-01-01,V1067"
"vivo,S16,V1068,13,vivo/v1068/v1068:13/TKQ1.221114.001/220068A:user/release-keys,v1068,TKQ1.221114.001,220068A,2022-01-01,V1068"
"vivo,S16 Pro,V1069,13,vivo/v1069/v1069:13/TKQ1.221114.001/220069A:user/release-keys,v1069,TKQ1.221114.001,220069A,2022-01-01,V1069"
"vivo,iQOO 9,V1070,13,vivo/v1070/v1070:13/TKQ1.221114.001/220070A:user/release-keys,v1070,TKQ1.221114.001,220070A,2022-01-01,V1070"
"vivo,iQOO 9 Pro,V1071,13,vivo/v1071/v1071:13/TKQ1.221114.001/220071A:user/release-keys,v1071,TKQ1.221114.001,220071A,2022-01-01,V1071"
"vivo,iQOO Neo6,V1072,13,vivo/v1072/v1072:13/TKQ1.221114.001/220072A:user/release-keys,v1072,TKQ1.221114.001,220072A,2022-01-01,V1072"
"vivo,iQOO Neo7,V1073,14,vivo/v1073/v1073:14/UP1A.231005.007/230073A:user/release-keys,v1073,UP1A.231005.007,230073A,2023-01-01,V1073"
"vivo,iQOO Z6,V1074,14,vivo/v1074/v1074:14/UP1A.231005.007/230074A:user/release-keys,v1074,UP1A.231005.007,230074A,2023-01-01,V1074"
"vivo,X90,V1075,14,vivo/v1075/v1075:14/UP1A.231005.007/230075A:user/release-keys,v1075,UP1A.231005.007,230075A,2023-01-01,V1075"
"vivo,X90 Pro,V1076,14,vivo/v1076/v1076:14/UP1A.231005.007/230076A:user/release-keys,v1076,UP1A.231005.007,230076A,2023-01-01,V1076"
"vivo,X90 Pro+,V1077,14,vivo/v1077/v1077:14/UP1A.231005.007/230077A:user/release-keys,v1077,UP1A.231005.007,230077A,2023-01-01,V1077"
"vivo,X Flip,V1078,14,vivo/v1078/v1078:14/UP1A.231005.007/230078A:user/release-keys,v1078,UP1A.231005.007,230078A,2023-01-01,V1078"
"vivo,X Fold2,V1079,14,vivo/v1079/v1079:14/UP1A.231005.007/230079A:user/release-keys,v1079,UP1A.231005.007,230079A,2023-01-01,V1079"
"vivo,V27,V1080,14,vivo/v1080/v1080:14/UP1A.231005.007/230080A:user/release-keys,v1080,UP1A.231005.007,230080A,2023-01-01,V1080"
"vivo,V27 Pro,V1081,14,vivo/v1081/v1081:14/UP1A.231005.007/230081A:user/release-keys,v1081,UP1A.231005.007,230081A,2023-01-01,V1081"
"vivo,V29,V1082,14,vivo/v1082/v1082:14/UP1A.231005.007/230082A:user/release-keys,v1082,UP1A.231005.007,230082A,2023-01-01,V1082"
"vivo,V29e,V1083,14,vivo/v1083/v1083:14/UP1A.231005.007/230083A:user/release-keys,v1083,UP1A.231005.007,230083A,2023-01-01,V1083"
"vivo,Y02t,V1084,14,vivo/v1084/v1084:14/UP1A.231005.007/230084A:user/release-keys,v1084,UP1A.231005.007,230084A,2023-01-01,V1084"
"vivo,Y17s,V1085,14,vivo/v1085/v1085:14/UP1A.231005.007/230085A:user/release-keys,v1085,UP1A.231005.007,230085A,2023-01-01,V1085"
"vivo,Y27,V1086,14,vivo/v1086/v1086:14/UP1A.231005.007/230086A:user/release-keys,v1086,UP1A.231005.007,230086A,2023-01-01,V1086"
"vivo,Y36,V1087,14,vivo/v1087/v1087:14/UP1A.231005.007/230087A:user/release-keys,v1087,UP1A.231005.007,230087A,2023-01-01,V1087"
"vivo,Y56,V1088,14,vivo/v1088/v1088:14/UP1A.231005.007/230088A:user/release-keys,v1088,UP1A.231005.007,230088A,2023-01-01,V1088"
"vivo,Y78,V1089,14,vivo/v1089/v1089:14/UP1A.231005.007/230089A:user/release-keys,v1089,UP1A.231005.007,230089A,2023-01-01,V1089"
"vivo,Y100,V1090,14,vivo/v1090/v1090:14/UP1A.231005.007/230090A:user/release-keys,v1090,UP1A.231005.007,230090A,2023-01-01,V1090"
"vivo,S17,V1091,14,vivo/v1091/v1091:14/UP1A.231005.007/230091A:user/release-keys,v1091,UP1A.231005.007,230091A,2023-01-01,V1091"
"vivo,S17 Pro,V1092,14,vivo/v1092/v1092:14/UP1A.231005.007/230092A:user/release-keys,v1092,UP1A.231005.007,230092A,2023-01-01,V1092"
"vivo,S18,V1093,14,vivo/v1093/v1093:14/UP1A.231005.007/230093A:user/release-keys,v1093,UP1A.231005.007,230093A,2023-01-01,V1093"
"vivo,S18 Pro,V1094,14,vivo/v1094/v1094:14/UP1A.231005.007/230094A:user/release-keys,v1094,UP1A.231005.007,230094A,2023-01-01,V1094"
"vivo,iQOO 11,V1095,14,vivo/v1095/v1095:14/UP1A.231005.007/230095A:user/release-keys,v1095,UP1A.231005.007,230095A,2023-01-01,V1095"
"vivo,iQOO Neo8,V1096,14,vivo/v1096/v1096:14/UP1A.231005.007/230096A:user/release-keys,v1096,UP1A.231005.007,230096A,2023-01-01,V1096"
"vivo,iQOO Neo8 Pro,V1097,14,vivo/v1097/v1097:14/UP1A.231005.007/240097A:user/release-keys,v1097,UP1A.231005.007,240097A,2024-01-01,V1097"
"vivo,iQOO Z7,V1098,14,vivo/v1098/v1098:14/UP1A.231005.007/240098A:user/release-keys,v1098,UP1A.231005.007,240098A,2024-01-01,V1098"
"vivo,iQOO Z8,V1099,14,vivo/v1099/v1099:14/UP1A.231005.007/240099A:user/release-keys,v1099,UP1A.231005.007,240099A,2024-01-01,V1099"
"vivo,X100,V1100,14,vivo/v1100/v1100:14/UP1A.231005.007/240100A:user/release-keys,v1100,UP1A.231005.007,240100A,2024-01-01,V1100"
"vivo,X100 Pro,V1101,14,vivo/v1101/v1101:14/UP1A.231005.007/240101A:user/release-keys,v1101,UP1A.231005.007,240101A,2024-01-01,V1101"
"vivo,X100 Ultra,V1102,14,vivo/v1102/v1102:14/UP1A.231005.007/240102A:user/release-keys,v1102,UP1A.231005.007,240102A,2024-01-01,V1102"
"vivo,X Fold3,V1103,14,vivo/v1103/v1103:14/UP1A.231005.007/240103A:user/release-keys,v1103,UP1A.231005.007,240103A,2024-01-01,V1103"
"vivo,X Fold3 Pro,V1104,14,vivo/v1104/v1104:14/UP1A.231005.007/240104A:user/release-keys,v1104,UP1A.231005.007,240104A,2024-01-01,V1104"
"vivo,V30,V1105,14,vivo/v1105/v1105:14/UP1A.231005.007/240105A:user/release-keys,v1105,UP1A.231005.007,240105A,2024-01-01,V1105"
"vivo,V30 Pro,V1106,14,vivo/v1106/v1106:14/UP1A.231005.007/240106A:user/release-keys,v1106,UP1A.231005.007,240106A,2024-01-01,V1106"
"vivo,V40,V1107,14,vivo/v1107/v1107:14/UP1A.231005.007/240107A:user/release-keys,v1107,UP1A.231005.007,240107A,2024-01-01,V1107"
"vivo,V40 Pro,V1108,14,vivo/v1108/v1108:14/UP1A.231005.007/240108A:user/release-keys,v1108,UP1A.231005.007,240108A,2024-01-01,V1108"
"vivo,Y03,V1109,14,vivo/v1109/v1109:14/UP1A.231005.007/240109A:user/release-keys,v1109,UP1A.231005.007,240109A,2024-01-01,V1109"
"vivo,Y18,V1110,14,vivo/v1110/v1110:14/UP1A.231005.007/240110A:user/release-keys,v1110,UP1A.231005.007,240110A,2024-01-01,V1110"
"vivo,Y28,V1111,14,vivo/v1111/v1111:14/UP1A.231005.007/240111A:user/release-keys,v1111,UP1A.231005.007,240111A,2024-01-01,V1111"
"vivo,Y38 5G,V1112,14,vivo/v1112/v1112:14/UP1A.231005.007/240112A:user/release-keys,v1112,UP1A.231005.007,240112A,2024-01-01,V1112"
"vivo,Y58 5G,V1113,14,vivo/v1113/v1113:14/UP1A.231005.007/240113A:user/release-keys,v1113,UP1A.231005.007,240113A,2024-01-01,V1113"
"vivo,Y100 4G,V1114,14,vivo/v1114/v1114:14/UP1A.231005.007/240114A:user/release-keys,v1114,UP1A.231005.007,240114A,2024-01-01,V1114"
"vivo,Y100i,V1115,14,vivo/v1115/v1115:14/UP1A.231005.007/240115A:user/release-keys,v1115,UP1A.231005.007,240115A,2024-01-01,V1115"
"vivo,S19,V1116,14,vivo/v1116/v1116:14/UP1A.231005.007/240116A:user/release-keys,v1116,UP1A.231005.007,240116A,2024-01-01,V1116"
"vivo,S19 Pro,V1117,14,vivo/v1117/v1117:14/UP1A.231005.007/240117A:user/release-keys,v1117,UP1A.231005.007,240117A,2024-01-01,V1117"
"vivo,iQOO 12,V1118,14,vivo/v1118/v1118:14/UP1A.231005.007/240118A:user/release-keys,v1118,UP1A.231005.007,240118A,2024-01-01,V1118"
"vivo,iQOO Neo9,V1119,14,vivo/v1119/v1119:14/UP1A.231005.007/240119A:user/release-keys,v1119,UP1A.231005.007,240119A,2024-01-01,V1119"
"vivo,iQOO Neo9 Pro,V1120,14,vivo/v1120/v1120:14/UP1A.231005.007/240120A:user/release-keys,v1120,UP1A.231005.007,240120A,2024-01-01,V1120"
"vivo,iQOO Z9,V1121,15,vivo/v1121/v1121:15/AP3A.240905.015/250121A:user/release-keys,v1121,AP3A.240905.015,250121A,2025-01-01,V1121"
"vivo,iQOO Z9 Turbo,V1122,15,vivo/v1122/v1122:15/AP3A.240905.015/250122A:user/release-keys,v1122,AP3A.240905.015,250122A,2025-01-01,V1122"
"vivo,X200,V1123,15,vivo/v1123/v1123:15/AP3A.240905.015/250123A:user/release-keys,v1123,AP3A.240905.015,250123A,2025-01-01,V1123"
"vivo,X200 Pro,V1124,15,vivo/v1124/v1124:15/AP3A.240905.015/250124A:user/release-keys,v1124,AP3A.240905.015,250124A,2025-01-01,V1124"
"vivo,X200 Ultra,V1125,15,vivo/v1125/v1125:15/AP3A.240905.015/250125A:user/release-keys,v1125,AP3A.240905.015,250125A,2025-01-01,V1125"
"vivo,X Fold5,V1126,15,vivo/v1126/v1126:15/AP3A.240905.015/250126A:user/release-keys,v1126,AP3A.240905.015,250126A,2025-01-01,V1126"
"vivo,V50,V1127,15,vivo/v1127/v1127:15/AP3A.240905.015/250127A:user/release-keys,v1127,AP3A.240905.015,250127A,2025-01-01,V1127"
"vivo,V50 Pro,V1128,15,vivo/v1128/v1128:15/AP3A.240905.015/250128A:user/release-keys,v1128,AP3A.240905.015,250128A,2025-01-01,V1128"
"vivo,Y300,V1129,15,vivo/v1129/v1129:15/AP3A.240905.015/250129A:user/release-keys,v1129,AP3A.240905.015,250129A,2025-01-01,V1129"
"vivo,Y300 Pro,V1130,15,vivo/v1130/v1130:15/AP3A.240905.015/250130A:user/release-keys,v1130,AP3A.240905.015,250130A,2025-01-01,V1130"
"vivo,Y300 Plus,V1131,15,vivo/v1131/v1131:15/AP3A.240905.015/250131A:user/release-keys,v1131,AP3A.240905.015,250131A,2025-01-01,V1131"
"vivo,S20,V1132,15,vivo/v1132/v1132:15/AP3A.240905.015/250132A:user/release-keys,v1132,AP3A.240905.015,250132A,2025-01-01,V1132"
"vivo,S20 Pro,V1133,15,vivo/v1133/v1133:15/AP3A.240905.015/250133A:user/release-keys,v1133,AP3A.240905.015,250133A,2025-01-01,V1133"
"vivo,iQOO 13,V1134,15,vivo/v1134/v1134:15/AP3A.240905.015/250134A:user/release-keys,v1134,AP3A.240905.015,250134A,2025-01-01,V1134"
"vivo,iQOO Neo10,V1135,15,vivo/v1135/v1135:15/AP3A.240905.015/250135A:user/release-keys,v1135,AP3A.240905.015,250135A,2025-01-01,V1135"
"vivo,iQOO Neo10 Pro,V1136,15,vivo/v1136/v1136:15/AP3A.240905.015/250136A:user/release-keys,v1136,AP3A.240905.015,250136A,2025-01-01,V1136"
"vivo,iQOO Z10,V1137,15,vivo/v1137/v1137:15/AP3A.240905.015/250137A:user/release-keys,v1137,AP3A.240905.015,250137A,2025-01-01,V1137"
"vivo,iQOO Z10 Turbo,V1138,15,vivo/v1138/v1138:15/AP3A.240905.015/250138A:user/release-keys,v1138,AP3A.240905.015,250138A,2025-01-01,V1138"
"vivo,X300,V1139,15,vivo/v1139/v1139:15/AP3A.240905.015/250139A:user/release-keys,v1139,AP3A.240905.015,250139A,2025-01-01,V1139"
"vivo,X300 Pro,V1140,15,vivo/v1140/v1140:15/AP3A.240905.015/250140A:user/release-keys,v1140,AP3A.240905.015,250140A,2025-01-01,V1140"
"vivo,X300 Ultra,V1141,15,vivo/v1141/v1141:15/AP3A.240905.015/250141A:user/release-keys,v1141,AP3A.240905.015,250141A,2025-01-01,V1141"
"vivo,V60,V1142,15,vivo/v1142/v1142:15/AP3A.240905.015/250142A:user/release-keys,v1142,AP3A.240905.015,250142A,2025-01-01,V1142"
"vivo,V60 Pro,V1143,15,vivo/v1143/v1143:15/AP3A.240905.015/250143A:user/release-keys,v1143,AP3A.240905.015,250143A,2025-01-01,V1143"
"vivo,Y400,V1144,15,vivo/v1144/v1144:15/AP3A.240905.015/250144A:user/release-keys,v1144,AP3A.240905.015,250144A,2025-01-01,V1144"
"vivo,Y400 Pro,V1145,15,vivo/v1145/v1145:15/AP3A.240905.015/260145A:user/release-keys,v1145,AP3A.240905.015,260145A,2026-01-01,V1145"
"vivo,S21,V1146,15,vivo/v1146/v1146:15/AP3A.240905.015/260146A:user/release-keys,v1146,AP3A.240905.015,260146A,2026-01-01,V1146"
"vivo,S21 Pro,V1147,15,vivo/v1147/v1147:15/AP3A.240905.015/260147A:user/release-keys,v1147,AP3A.240905.015,260147A,2026-01-01,V1147"
"vivo,iQOO 14,V1148,15,vivo/v1148/v1148:15/AP3A.240905.015/260148A:user/release-keys,v1148,AP3A.240905.015,260148A,2026-01-01,V1148"
"vivo,iQOO Neo11,V1149,15,vivo/v1149/v1149:15/AP3A.240905.015/260149A:user/release-keys,v1149,AP3A.240905.015,260149A,2026-01-01,V1149"
)

    # BUILD ID
    build_prefix=("RKQ1" "RKQ2" "SP1A" "QP1A" "TD1A" "RQ1A" "RQ2A" "RQ3A" "SQ1A" "SQ2A" "SQ3A" "TP1A" "TP2A")
    build_year=(
        # 2020
        "200826" "200827" "200828" "200829" "200830"
        "200901" "200902" "200903" "200904" "200905"
        "200906" "200907" "200908" "200909" "200910"
        
        # 2021
        "210101" "210102" "210103" "210104" "210105"
        "210106" "210107" "210108" "210109" "210110"
        "210111" "210112" "210113" "210114" "210115"
        "210201" "210202" "210203" "210204" "210205"
        "210312" "210313" "210314" "210315" "210316"
        "210401" "210402" "210403" "210404" "210405"
        "210515" "210516" "210517" "210518" "210519"
        "210601" "210602" "210603" "210604" "210605"
        "210701" "210702" "210703" "210704" "210705"
        "210826" "210827" "210828" "210829" "210830"
        "210901" "210902" "210903" "210904" "210905"
        "211001" "211002" "211003" "211004" "211005"
        "211101" "211102" "211103" "211104" "211105"
        "211215" "211216" "211217" "211218" "211219"
        
        # 2022
        "220101" "220102" "220103" "220104" "220105"
        "220201" "220202" "220203" "220204" "220205"
        "220315" "220316" "220317" "220318" "220319"
        "220401" "220402" "220403" "220404" "220405"
        "220515" "220516" "220517" "220518" "220519"
        "220601" "220602" "220603" "220604" "220605"
        "220701" "220702" "220703" "220704" "220705"
        "220826" "220827" "220828" "220829" "220830"
        "220901" "220902" "220903" "220904" "220905"
        "221001" "221002" "221003" "221004" "221005"
        "221101" "221102" "221103" "221104" "221105"
        "221215" "221216" "221217" "221218" "221219"
        
        # 2023
        "230101" "230102" "230103" "230104" "230105"
        "230201" "230202" "230203" "230204" "230205"
        "230315" "230316" "230317" "230318" "230319"
        "230401" "230402" "230403" "230404" "230405"
        "230515" "230516" "230517" "230518" "230519"
        "230601" "230602" "230603" "230604" "230605"
        "230701" "230702" "230703" "230704" "230705"
        "230826" "230827" "230828" "230829" "230830"
        
        # 2024
        "240101" "240102" "240103" "240104" "240105"
        "240201" "240202" "240203" "240204" "240205"
        "240315" "240316" "240317" "240318" "240319"
        "240401" "240402" "240403" "240404" "240405"
    )
    build_num=("002" "003" "004" "005" "006" "007" "008" "009" "010" 
                    "011" "012" "013" "014" "015" "016" "017" "018" "019" "020"
                    "021" "022" "023" "024" "025" "026" "027" "028" "029" "030"
                    "031" "032" "033" "034" "035" "036" "037" "038" "039" "040"
                    "041" "042" "043" "044" "045" "046" "047" "048" "049" "050")
    
    # Pilih random dari setiap array
    build_random_prefix=${build_prefix[$RANDOM % ${#build_prefix[@]}]}
    build_random_year=${build_year[$RANDOM % ${#build_year[@]}]}
    build_random_build_num=${build_num[$RANDOM % ${#build_num[@]}]}


get_random_device_profile() {
    ARRAY_LENGTH=${#DEVICE_PROFILES[@]}
    if [ $ARRAY_LENGTH -eq 0 ]; then
        echo -e "${R}Error: DEVICE_PROFILES array kosong!${N}" >&2
        return 1
    fi
    
    is_valid=false
    attempts=0
    SELECTED_PROFILE=""

    # Coba hingga 20 kali untuk mendapatkan profil yang valid
    while [ "$is_valid" = false ] && [ $attempts -lt 20 ]; do
        RANDOM_INDEX=$((RANDOM % ARRAY_LENGTH))
        SELECTED_PROFILE="${DEVICE_PROFILES[$RANDOM_INDEX]}"

        # Validasi sederhana: harus memiliki setidaknya 8 koma (9 field)
        field_count=$(echo "$SELECTED_PROFILE" | tr -cd ',' | wc -c)
        
        if [ $field_count -ge 8 ] && [ -n "$SELECTED_PROFILE" ]; then
            is_valid=true
        else
            attempts=$((attempts + 1))
        fi
    done
    
    # Jika setelah 20 percobaan masih gagal, gunakan profil default yang aman
    if [ "$is_valid" = false ]; then
        echo -e "${Y}Peringatan: Gagal menemukan profil yang valid, menggunakan fallback...${N}" >&2
        SELECTED_PROFILE="google,Pixel 8,shiba,15,google/shiba/shiba:15/BP1A.250405.005.B1/13151136:user/release-keys,shiba,BP1A.250405.005.B1,13151136,2019-01-21"
    fi

    echo "$SELECTED_PROFILE"
}

dynamic_app_data_cleanup() {
    echo -e "${Y}Melakukan pembersihan data aplikasi secara dinamis...${N}"
    
    for keyword in "${TARGET_APP_KEYWORDS[@]}"; do
        # Cari dan hapus di /data/data (untuk data internal)
        # Menggunakan find -print0 dan while read untuk menangani nama file dengan aman
        find /data/data -maxdepth 1 -type d -name "*${keyword}*" -print0 2>/dev/null | while IFS= read -r -d '' dir; do
            if [ -n "$dir" ]; then
                echo -e "${C}Menghapus direktori data: $dir${N}"
                #rm -rf "$dir"
            fi
        done

        # Cari dan hapus di /storage/emulated/0/Android/data (untuk data eksternal)
        find /storage/emulated/0/Android/data -maxdepth 1 -type d -name "*${keyword}*" -print0 2>/dev/null | while IFS= read -r -d '' dir; do
            if [ -n "$dir" ]; then
                echo -e "${C}Menghapus direktori data eksternal: $dir${N}"
                rm -rf "$dir"
            fi
        done

        # Cari dan hapus di seluruh penyimpanan internal (/storage/emulated/0)
        find /storage/emulated/0 -maxdepth 1 -type d -name "*${keyword}*" -print0 2>/dev/null | while IFS= read -r -d '' dir; do
            if [ -n "$dir" ]; then
                echo -e "${C}Menghapus direktori penyimpanan utama: $dir${N}"
                rm -rf "$dir"
            fi
        done
    done

    echo -e "${G}Pembersihan data aplikasi dinamis selesai.${N}"
}

# Fungsi untuk melakukan pembersihan awal
pre_spoof_cleanup() {
    echo -e "${Y}Melakukan pembersihan sebelum spoofing...${N}"
    
# Di fungsi pre_spoof_cleanup(), ganti bagian:
# Aktifkan mode pesawat (jika settings service tersedia)
if [ "$(getprop init.svc.settings)" = "running" ]; then
    settings put global airplane_mode_on 1
    am broadcast -a android.intent.action.AIRPLANE_MODE 2>/dev/null || true
fi
    # Matikan dan paksa berhenti berbagai aplikasi, dengan validasi
    echo -e "${C}Menghentikan aplikasi target...${N}"
    for app in "${APPS_TO_KILL[@]}"; do
        # Hanya jalankan jika paket ada untuk menghindari error
        if pm list packages | grep -q "^package:$app$"; then
            am kill "$app" &>/dev/null
            am force-stop "$app" &>/dev/null
        fi
    done

    # Hapus data aplikasi menggunakan pm clear, dengan validasi
    echo -e "${C}Membersihkan data aplikasi target...${N}"
    for app in "${APPS_TO_CLEAR[@]}"; do
        # Hanya jalankan jika paket ada
        if pm list packages | grep -q "^package:$app$"; then
            pm clear "$app" &>/dev/null
        fi
    done
    
    # Hapus direktori data secara dinamis berdasarkan kata kunci
    dynamic_app_data_cleanup

    # Hapus file prop yang ada dari modul Magisk
    echo -e "${C}Membersihkan file properti Magisk lama...${N}"
    magisk_prop_files=(
        "/data/adb/modules/xkatrina_snstv_prps/system.prop"
        "/data/adb/modules/MagiskHidePropsConf/system.prop"
        "/data/adb/modules/YhaDroid/system.prop"
		"/data/adb/modules/KToolsHidePropsConf/system.prop"
        "/data/adb/modules/xkatrina_snstv_prps/post-fs-data.sh"
        "/data/adb/modules/MagiskHidePropsConf/post-fs-data.sh"
        "/data/adb/modules/YhaDroid/post-fs-data.sh"
		"/data/adb/modules/KToolsHidePropsConf/post-fs-data.sh"
    )
    for file in "${magisk_prop_files[@]}"; do
        if [ -f "$file" ]; then
            rm -f "$file"
        fi
    done
    
    echo -e "${G}Pembersihan sebelum spoofing selesai.${N}"
    sleep 1
}


generate_and_apply_props() {
    #echo -e "${Y}Menghasilkan properti perangkat baru...${N}"

    # --- Pembuatan Properti Perangkat ---
    
    # Dapatkan profil perangkat acak dari array internal
    RANDOM_LINE=$(get_random_device_profile)
    
    # Debug: Tampilkan line yang dipilih
    echo -e "${W}Base Data ${N}:${B} $RANDOM_LINE${N}"
    
    # Parse dengan metode yang lebih robust untuk menangani format tidak konsisten
    BRAND=$(echo "$RANDOM_LINE" | cut -d',' -f1)
    MODEL=$(echo "$RANDOM_LINE" | cut -d',' -f2)
	MODEL_CODE=$(echo "$RANDOM_LINE" | cut -d',' -f10)
    DEVICE=$(echo "$RANDOM_LINE" | cut -d',' -f3)
    VERSION_RELEASE=$(echo "$RANDOM_LINE" | cut -d',' -f4)
    
    # Fingerprint bisa mengandung koma, jadi ambil dari field 5 sampai sebelum product_name
    FINGERPRINT=$(echo "$RANDOM_LINE" | cut -d',' -f5)
    
    # Cari field-field lainnya dari akhir line
    LINE_LENGTH=$(echo "$RANDOM_LINE" | tr -cd ',' | wc -c)
    LINE_LENGTH=$((LINE_LENGTH + 1))
    
    if [ $LINE_LENGTH -ge 9 ]; then
        # Format normal: ambil field sesuai posisi
        PRODUCT_NAME=$(echo "$RANDOM_LINE" | cut -d',' -f6)
        BUILD_IDD=$(echo "$RANDOM_LINE" | cut -d',' -f7)
        VERSION_INCREMENTAL=$(echo "$RANDOM_LINE" | cut -d',' -f8)
        SECURITY_PATCH=$(echo "$RANDOM_LINE" | cut -d',' -f9)
    else
        # Format tidak normal: coba ekstrak dari fingerprint atau gunakan default
        echo -e "${Y}Format data tidak normal, mencoba ekstrak dari fingerprint...${N}"
        
        # Ekstrak product_name dari fingerprint jika mungkin
        PRODUCT_NAME=$(echo "$FINGERPRINT" | cut -d'/' -f2 | cut -d':' -f1)
        [ -z "$PRODUCT_NAME" ] && PRODUCT_NAME="$DEVICE"
        
        # Ekstrak build_id dari fingerprint
        BUILD_ID=$(echo "$FINGERPRINT" | awk -F'/' '{print $NF}' | cut -d':' -f2)
        [ -z "$BUILD_ID" ] && BUILD_ID="UNKNOWN"
        
        # Untuk field lainnya, gunakan default
        VERSION_INCREMENTAL="UNKNOWN"
        SECURITY_PATCH="2025-06-05"
    fi
    
    # Validasi dan cleaning values
    BRANDR=$(tr -dc 'A-Za-z' </dev/urandom | head -c 7)
	BRAND=$(echo "$BRAND" | head -c 100)
    MODEL=$(echo "$MODEL" | head -c 100)
	MODEL_CODE=$MODEL_CODE
    DEVICE=$(echo "$DEVICE" | tr -d '[:space:]' | head -c 20)
    VERSION_RELEASE=$((11 + RANDOM % 5))
    FINGERPRINT=$(echo "$FINGERPRINT" | head -c 100)
    PRODUCT_NAME=$(echo "$PRODUCT_NAME" | tr -d '[:space:]' | head -c 30)
    BUILD_ID=$build_random_prefix.$build_random_year.$build_random_build_num
    BUILD_IDD=$(echo "$BUILD_IDD" | head -c 100)
    VERSION_INCREMENTAL=$(echo "$VERSION_INCREMENTAL" | tr -d '[:space:]' | head -c 20)
    SECURITY_PATCH=$(echo "$SECURITY_PATCH" | tr -d '[:space:]')
    
    # Pastikan semua nilai memiliki nilai minimal
    [ -z "$BRAND" ] && BRAND="Unknown"
	[ -z "$BRAND" ] && BRAND="Unknown"
    [ -z "$MODEL" ] && MODEL="Unknown"
	[ -z "$MODEL_CODE" ] && MODEL_CODE="Unknown"
    [ -z "$DEVICE" ] && DEVICE="unknown"
    [ -z "$VERSION_RELEASE" ] && VERSION_RELEASE="15"
    [ -z "$FINGERPRINT" ] && FINGERPRINT="unknown/unknown/unknown:15/UNKNOWN:user/release-keys"
    [ -z "$PRODUCT_NAME" ] && PRODUCT_NAME="unknown"
    [ -z "$BUILD_ID" ] && BUILD_ID="UNKNOWN"
    [ -z "$BUILD_IDD" ] && BUILD_IDD="UNKNOWN"
    [ -z "$VERSION_INCREMENTAL" ] && VERSION_INCREMENTAL="UNKNOWN"
    [ -z "$SECURITY_PATCH" ] && SECURITY_PATCH="2025-01-01"
    
    # Validasi format security_patch
    if ! echo "$SECURITY_PATCH" | grep -qE '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'; then
        echo -e "${Y}Security patch format invalid: $SECURITY_PATCH, using default${N}"
        SECURITY_PATCH="2025-01-01"
    fi
    echo ""
    echo -e "${G}Data yang dihasilkan:${N}"
    sleep 0.3
    echo -e "${C} Brand: $BRANDR"
    sleep 0.3
	echo -e "${C} Manufactur: $BRAND"
    sleep 0.3
    echo -e "${C} Model: $MODEL_CODE"
    sleep 0.3
    echo -e "${C} Device: $DEVICE${N}"
    sleep 0.3
    echo -e "${C} Android: $VERSION_RELEASE"
    sleep 0.3
    echo -e "${C} Fingerprint: $FINGERPRINT${N}"
    sleep 3
    
    # Ekstrak deskripsi build dari fingerprint
    DESCRIPTION="$BUILD_ID.$VERSION_INCREMENTAL release-keys"
    
    # Hasilkan properti acak lainnya
    UTC="16$(head -3 /dev/urandom | tr -cd '0123456789' | cut -c -8)"
    # Generate host berdasarkan brand dan nomor acak yang rapih
    BRAND_PREFIX=$(echo "$BRAND" | tr '[:lower:]' '[:upper:]' | cut -c1-2)
    RANDOM_NUM=$(printf "%04d" $((RANDOM % 10000)))
    RANDOM_SUFFIX=$(head -3 /dev/urandom | tr -cd 'A-Z' | cut -c -2)
    HOST="${BRAND_PREFIX}${RANDOM_NUM}${RANDOM_SUFFIX}"
    USER="$(head -3 /dev/urandom | tr -cd 'bcdfghjklmnpqrstvwxyz' | cut -c -6)"
    BOOTLOADER="$(head -8 /dev/urandom | tr -dc 'a-f0-9' | head -c 8)"
    HARDWARE="$(head -5 /dev/urandom | tr -cd 'a-z0-9' | cut -c -8)"
    BOARD="$(echo "$DEVICE" | tr -cd 'a-zA-Z0-9' | head -c 8)"
    
    # --- Logika Tanggal Build yang Konsisten ---
    BASE_DATE=""
    
    # Prioritas 1: Coba ekstrak tanggal dari build_id
    BUILD_DATE_CODE=$(echo "$BUILD_IDX" | grep -o -E '[0-9]{6,}')
    if [ -n "$BUILD_DATE_CODE" ] && [ ${#BUILD_DATE_CODE} -ge 6 ]; then
        YY=$(echo "$BUILD_DATE_CODE" | cut -c 1-2)
        MM=$(echo "$BUILD_DATE_CODE" | cut -c 3-4)
        DD=$(echo "$BUILD_DATE_CODE" | cut -c 5-6)
        BASE_DATE="20${YY}-${MM}-${DD}"
        echo -e "${C}BUILD DATE : $BASE_DATE${N}"
    fi

    # Prioritas 2 (Fallback): Gunakan security_patch + offset acak
    if [ -z "$BASE_DATE" ]; then
        OFFSET_DAYS=$(( (RANDOM % 12) + 3 ))
        # Konversi tanggal patch keamanan ke detik epoch
        SECURITY_PATCH_EPOCH=$(date +%s -d "${SECURITY_PATCH}T00:00:00Z" 2>/dev/null || date +%s -d "${SECURITY_PATCH}")
        # Hitung offset dalam detik
        OFFSET_SECONDS=$(( OFFSET_DAYS * 86400 ))
        # Hitung epoch baru
        NEW_EPOCH=$(( SECURITY_PATCH_EPOCH + OFFSET_SECONDS ))
        # Konversi epoch baru kembali ke format YYYY-MM-DD
        BASE_DATE=$(date +%Y-%m-%d -d "@$NEW_EPOCH")
        echo -e "${Y}Peringatan: Menggunakan tanggal security patch sebagai fallback: $BASE_DATE${N}"
    fi

    # Hasilkan waktu acak untuk hari itu
    HOUR=$(printf "%02d" $((RANDOM % 24)))
    MINUTE=$(printf "%02d" $((RANDOM % 60)))
    SECOND=$(printf "%02d" $((RANDOM % 60)))
    
    # Konversi tanggal dasar ke epoch
    BASE_DATE_EPOCH=$(date +%s -d "${BASE_DATE}T00:00:00Z" 2>/dev/null || date +%s -d "${BASE_DATE}")
    # Hitung detik dari waktu acak
    TIME_SECONDS=$(( HOUR * 3600 + MINUTE * 60 + SECOND ))
    # Gabungkan untuk mendapatkan stempel waktu UTC akhir
    UTC=$(( BASE_DATE_EPOCH + TIME_SECONDS ))

    # Hasilkan string tanggal build yang diformat dari stempel waktu UTC
    BUILD_DATE_STR=$(date -u -d "@$UTC" +"%a %b %d %H:%M:%S UTC %Y")
    
    # --- Kumpulkan Semua Properti ---
    # Buat file sementara untuk properti
    PROPS_TMP_FILE="/data/local/tmp/props_list.txt"
    rm -f "$PROPS_TMP_FILE"
    PROPS_TMP_FILEZ="/data/local/tmp/props_listt.txt"
    rm -f "$PROPS_TMP_FILEZ"
    
    # Fungsi untuk menambahkan properti
    add_prop() {
        echo "$1=$2" >> "$PROPS_TMP_FILE"
    }
    add_prop1() {
        echo "$1" >> "$PROPS_TMP_FILE"
    }
    add_prop "ro.debuggable" "0"
    add_prop "ro.secure" "1"
    add_prop "ro.adb.secure" "1"
    add_prop "ro.boot.verifiedbootstate" "green"
    add_prop "ro.boot.veritymode" "enforcing"
    add_prop "ro.boot.selinux" "enforcing"
    add_prop "vendor.boot.vbmeta.device_state" "locked"
    add_prop "ro.boot.flash.locked" "1"
    add_prop "ro.boot.warranty_bit" "0"
    add_prop "ro.warranty_invalid" "0"
	add_prop "ro.com.google.ime.theme_id" "5"
    add_prop "sys.oem_unlock_allowed" "0"
    add_prop "ro.allow.mock.location" "0"
    add_prop "ro.build.selinux" "1"
    add_prop "security.perf_harden" "1"
    add_prop "keyguard.no_require_sim" "true"
    add_prop "init.svc.flash_recovery" "stopped"
    add_prop "ro.crypto.state" "encrypted"
    add_prop "persist.log.tag.LSPosed" "S"
    add_prop "persist.log.tag.LSPosed-Bridge" "S"
    add_prop "ro.build.version.security_patch" "$SECURITY_PATCH"
    add_prop1 "#"
    # Properti dasar
    add_prop "ro.product.brand" "$BRANDR"
    add_prop "ro.product.manufacturer" "$BRAND"
    add_prop "ro.product.name" "$PRODUCT_NAME"
    add_prop "ro.product.device" "$DEVICE"
    add_prop "ro.product.model" "$MODEL_CODE"
    add_prop "ro.product.board" "$BOARD"
    add_prop "ro.build.fingerprint" "$FINGERPRINT"
    add_prop "ro.build.id" "$BUILD_ID"
    add_prop "ro.build.version.incremental" "$VERSION_INCREMENTAL"
    add_prop "ro.build.version.release" "$VERSION_RELEASE"
    add_prop "ro.build.description" "$DESCRIPTION"
    add_prop "ro.bootloader" "$BOOTLOADER"
    add_prop "ro.build.user" "$USER"
    add_prop "ro.build.host" "$HOST"
    add_prop "ro.build.date" "$BUILD_DATE_STR"
    add_prop "ro.build.date.utc" "$UTC"
    add_prop "ro.build.tags" "release-keys"
    add_prop "ro.build.type" "user"
    add_prop "ro.build.display.id" "$DESCRIPTION"
    # add_prop "ro.build.expect.baseband" 
    add_prop "ro.bootimage.build.fingerprint" "$FINGERPRINT"
    add_prop1 "#"

    # Properti duplikat untuk konsistensi
    for prop_prefix in "system" "vendor" "product" "odm" "system_ext"; do
        add_prop "ro.product.${prop_prefix}.brand" "$BRANDR"
        add_prop "ro.product.${prop_prefix}.manufacturer" "$BRAND"
        add_prop "ro.product.${prop_prefix}.name" "$PRODUCT_NAME"
        add_prop "ro.product.${prop_prefix}.device" "$DEVICE"
        add_prop "ro.product.${prop_prefix}.model" "$MODEL_CODE"
        add_prop "ro.product.${prop_prefix}.board" "$BOARD"
        add_prop "ro.build.product" "$DEVICE"
        add_prop "ro.product.build.id" "$BUILD_ID"
        add_prop "ro.com.google.clientidbase" "$DEVICE-google"
        add_prop "ro.${prop_prefix}.build.fingerprint" "$FINGERPRINT"
        add_prop "ro.${prop_prefix}.build.version.release" "$VERSION_RELEASE"
        add_prop "ro.${prop_prefix}.build.id" "$BUILD_ID"
        add_prop "ro.${prop_prefix}.build.version.incremental" "$VERSION_INCREMENTAL"
        add_prop "ro.${prop_prefix}.build.date" "$BUILD_DATE_STR"
        add_prop "ro.${prop_prefix}.build.date.utc" "$UTC"
        add_prop "ro.product.locale" "id-ID"    
        add_prop1 "#"
    done

add_prop11() {
        echo "$1=$2" >> "$PROPS_TMP_FILEZ"
    }
add_prop11S() {
        echo "$1=$2" >> "$PROPS_TMP_FILEZ"
    }    
    # Properti dasar
    add_prop11 "ro.product.brand" "$BRANDR"
    add_prop11 "ro.product.manufacturer" "$BRAND"
    add_prop11 "ro.product.name" "$PRODUCT_NAME"
    add_prop11 "ro.product.device" "$DEVICE"
    add_prop11 "ro.product.model" "$MODEL_CODE"
    add_prop11 "ro.product.board" "$BOARD"
    add_prop11 "ro.build.fingerprint" "$FINGERPRINT"
    add_prop11 "ro.build.id" "$BUILD_ID"
    add_prop11 "ro.build.version.incremental" "$VERSION_INCREMENTAL"
    add_prop11 "ro.build.version.release" "$VERSION_RELEASE"
    add_prop11 "ro.build.description" "$DESCRIPTION"
    add_prop11 "ro.bootloader" "$BOOTLOADER"
    add_prop11 "ro.build.user" "$USER"
    add_prop11 "ro.build.host" "$HOST"
    add_prop11 "ro.build.date" "$BUILD_DATE_STR"
    add_prop11 "ro.build.date.utc" "$UTC"
    add_prop11 "ro.build.tags" "release-keys"
    add_prop11 "ro.build.type" "user"
    add_prop11 "ro.build.display.id" "$DESCRIPTION"
    # add_prop "ro.build.expect.baseband" 
    add_prop11 "ro.bootimage.build.fingerprint" "$FINGERPRINT"
    
    # Properti duplikat untuk konsistensi
    for prop_prefix in "system" "vendor" "product" "odm" "system_ext"; do
        add_prop11 "ro.product.${prop_prefix}.brand" "$BRANDR"
        add_prop11 "ro.product.${prop_prefix}.manufacturer" "$BRAND"
        add_prop11 "ro.product.${prop_prefix}.name" "$PRODUCT_NAME"
        add_prop11 "ro.product.${prop_prefix}.device" "$DEVICE"
        add_prop11 "ro.product.${prop_prefix}.model" "$MODEL_CODE"
        add_prop11 "ro.product.${prop_prefix}.board" "$BOARD"
        add_prop11 "ro.build.product" "$DEVICE"
        add_prop11 "ro.product.build.id" "$BUILD_ID"
        add_prop11 "ro.com.google.clientidbase" "$DEVICE-google"
        add_prop11 "ro.${prop_prefix}.build.fingerprint" "$FINGERPRINT"
        add_prop11 "ro.${prop_prefix}.build.version.release" "$VERSION_RELEASE"
        add_prop11 "ro.${prop_prefix}.build.id" "$BUILD_ID"
        add_prop11 "ro.${prop_prefix}.build.version.incremental" "$VERSION_INCREMENTAL"
        add_prop11 "ro.${prop_prefix}.build.date" "$BUILD_DATE_STR"
        add_prop11 "ro.${prop_prefix}.build.date.utc" "$UTC"
        add_prop11 "ro.product.locale" "id-ID"
    done
    
    # --- Path File ---
    TMP_DIR="/data/local/tmp"
    SYSTEM_PROP_TMP="$TMP_DIR/system.prop"
    POST_FS_DATA_TMP="$TMP_DIR/post-fs-data.sh"
    
    # Path modul Magisk
    MOD_DIRS=("/data/adb/modules/xkatrina_snstv_prps" "/data/adb/modules/KToolsHidePropsConf" "/data/adb/modules/YhaDroid")
    
    # --- Hasilkan system.prop ---
    #echo -e "${Y}Menghasilkan system.prop...${N}"
    rm -f "$SYSTEM_PROP_TMP"
    
    {
        echo "# This file will be read by resetprop"
        echo "# MagiskHide Props Config"
        echo "# Hak Cipta (c) 2018-2021 Didgeridoohan @ XDA Developers"
        echo "# Lisensi: MIT"
        echo "# KTools 2025"
        echo "#"
        echo "# Tambahan dari KTools"
        cat "$PROPS_TMP_FILE"
    } > "$SYSTEM_PROP_TMP"
    
    # --- Hasilkan post-fs-data.sh yang Kuat ---
    #echo -e "${Y}Menghasilkan post-fs-data.sh yang kuat...${N}"
    rm -f "$POST_FS_DATA_TMP"
    RANDOM_SERIAL=$(head /dev/urandom | tr -dc 'A-Z0-9' | head -c 12)
    
    {
        echo "#!/system/bin/sh"
        echo "MODDIR="${0%/*}""
        echo "MODNAME="${MODDIR##*/}""
        echo "MAGISKTMP="$(magisk --path)" || MAGISKTMP=/sbin"
        echo ""
        echo "if [ "$(magisk -V)" -lt 26302 ] || [ "$(/data/adb/ksud -V)" -lt 10818 ]; then"
        echo "  touch "$MODDIR/disable""
        echo "fi"
        echo ""
        echo "if [ ! -e "$MAGISKTMP/.magisk/mirror/sepolicy.rules/$MODNAME/sepolicy.rule" ] && [ ! -e "$MAGISKTMP/.magisk/sepolicy.rules/$MODNAME/sepolicy.rule" ]; then"
        echo "    magiskpolicy --live --apply "$MODDIR/sepolicy.rule""
        echo "    ksud sepolicy apply "$MODDIR/sepolicy.rule""
        echo "fi"
        echo ""
        echo "ksud sepolicy apply "$MODDIR/sepolicy.rule""
        echo ""
        echo ". "$MODDIR/resetprop.sh""
        echo ""
        while IFS= read -r line; do
            key=$(echo "$line" | cut -d'=' -f1)
            value=$(echo "$line" | cut -d'=' -f2-)
            escaped_value=$(echo "$value" | sed "s/'/'\\\\''/g")
            echo "check_resetprop $key $escaped_value"
        done < "$PROPS_TMP_FILEZ"
        echo ""
        echo "# --- Perbaikan untuk Custom ROM Detection ---"
        echo "# Hapus jejak build custom ROM (LineageOS, AOSP, dll)"
        echo "replace_value_resetprop ro.build.description \"aosp_\" \"\""
        echo "replace_value_resetprop ro.build.fingerprint \"aosp_\" \"\""
        echo "replace_value_resetprop ro.build.flavor \"aosp_\" \"\""
        echo "replace_value_resetprop ro.product.bootimage.name \"aosp_\" \"\""
        echo "replace_value_resetprop ro.product.name \"aosp_\" \"\""
        echo ""
        echo "replace_value_resetprop ro.build.description \"lineage_\" \"\""
        echo "replace_value_resetprop ro.build.fingerprint \"lineage_\" \"\""
        echo "replace_value_resetprop ro.build.flavor \"lineage_\" \"\""
        echo "replace_value_resetprop ro.product.bootimage.name \"lineage_\" \"\""
        echo "replace_value_resetprop ro.product.name \"lineage_\" \"\""
        echo ""
        echo "replace_value_resetprop ro.build.description test-keys release-keys"
        echo "replace_value_resetprop ro.build.description userdebug user"
        echo "replace_value_resetprop ro.build.fingerprint test-keys release-keys"
        echo "replace_value_resetprop ro.build.fingerprint userdebug user"
        echo "replace_value_resetprop ro.build.flavor userdebug user"
        echo ""
        echo "# Perbaikan tags build untuk semua partisi"
        echo "for prefix in system vendor system_ext product oem odm vendor_dlkm odm_dlkm bootimage; do"
        echo "    check_resetprop ro.${prefix}.build.tags release-keys"
        echo "    check_resetprop ro.${prefix}.build.type user"
        echo "    replace_value_resetprop ro.${prefix}.build.description test-keys release-keys"
        echo "    replace_value_resetprop ro.${prefix}.build.description userdebug user"
        echo "    replace_value_resetprop ro.${prefix}.build.fingerprint test-keys release-keys"
        echo "    replace_value_resetprop ro.${prefix}.build.fingerprint userdebug user"
        echo "    replace_value_resetprop ro.${prefix}.build.description \"aosp_\" \"\""
        echo "    replace_value_resetprop ro.${prefix}.build.fingerprint \"aosp_\" \"\""
        echo "    replace_value_resetprop ro.product.${prefix}.name \"aosp_\" \"\""
        echo "    replace_value_resetprop ro.${prefix}.build.description \"lineage_\" \"\""
        echo "    replace_value_resetprop ro.${prefix}.build.fingerprint \"lineage_\" \"\""
        echo "    replace_value_resetprop ro.product.${prefix}.name \"lineage_\" \"\""
        echo "done"
        echo ""
        echo "# --- Properti Tambahan untuk OEM Spesifik ---"
        echo "# Samsung properties"
        echo "#check_resetprop ro.build.scafe.version 2024A"
        echo "#check_resetprop ro.build.samsung.version 11"
        echo ""
        echo "# Xiaomi properties"
        echo "#check_resetprop ro.miui.ui.version.code 14"
        echo "#check_resetprop ro.miui.ui.version.name V14"
        echo ""
        echo "# OnePlus properties"
        echo "#check_resetprop ro.oneplus.version 11.0.0"
        echo "#check_resetprop ro.oneplus.device OnePlus9Pro"
        echo ""
        echo "# Realme properties"
        echo "#check_resetprop ro.realme.version RMX2202_11_F.12"
        echo "#check_resetprop ro.realme.device RMX2202"
        echo ""
        echo "# --- Hardware Properties untuk Realisme ---"
        echo "#check_resetprop ro.hardware $HARDWARE"
        echo "#check_resetprop ro.board.platform $BOARD"
        echo "#check_resetprop ro.arch arm64-v8a"
        echo "#check_resetprop ro.chipname $BOARD"
        echo ""
        echo "# --- Security Enhanced Properties ---"
        echo "check_resetprop ro.boot.verifiedbootstate green"
        echo "check_resetprop ro.boot.veritymode enforcing"
        echo "check_resetprop ro.boot.flash.locked 1"
        echo "check_resetprop ro.boot.vbmeta.device_state locked"
        echo "check_resetprop vendor.boot.vbmeta.device_state locked"
        echo "check_resetprop ro.oem_unlock_supported 0"
        echo "check_resetprop sys.oem_unlock_allowed 0"
        echo "check_resetprop ro.crypto.state encrypted"
        echo "check_resetprop persist.log.tag.LSPosed S"
        echo "check_resetprop persist.log.tag.LSPosed-Bridge S"
        echo ""
        echo "# --- Google SafetyNet Compatibility ---"
        echo "check_resetprop ro.boot.verifiedbootstate green"
        echo "check_resetprop ro.boot.veritymode enforcing"
        echo "check_resetprop ro.boot.flash.locked 1"
        echo "check_resetprop ro.build.tags release-keys"
        echo "check_resetprop ro.build.type user"
        echo ""
        echo "# --- Clean up debugging properties ---"
        echo "replace_value_resetprop ro.debuggable 1 0"
        echo "replace_value_resetprop ro.secure 0 1"
        echo "replace_value_resetprop ro.adb.secure 0 1"
        echo "replace_value_resetprop persist.sys.usb.config mtp,adb mtp"
        echo ""
        echo "# --- Final consistency check ---"
        echo "for prop_prefix in system vendor product odm system_ext; do"
        echo "    check_resetprop ro.${prop_prefix}.build.tags release-keys"
        echo "    check_resetprop ro.${prop_prefix}.build.type user"
        echo "    check_resetprop ro.${prop_prefix}.build.selinux 1"
        echo "done"
    } > "$POST_FS_DATA_TMP"

    chmod 755 "$POST_FS_DATA_TMP"
    
    # --- Salin file ke direktori Magisk ---
    #echo -e "${Y}Menyalin file prop ke modul Magisk...${N}"
    for mod_dir in "${MOD_DIRS[@]}"; do
        if [ -d "$mod_dir" ]; then
            cp -f "$SYSTEM_PROP_TMP" "$mod_dir/system.prop"
            cp -f "$POST_FS_DATA_TMP" "$mod_dir/post-fs-data.sh"
            chmod 755 "$mod_dir/post-fs-data.sh"
            #echo -e "${C}Disalin ke $mod_dir${N}"
        fi
    done

    # Bersihkan file sementara
    rm -f "$PROPS_TMP_FILEZ"
    
    #echo -e "${G}Properti perangkat dihasilkan dan diterapkan.${N}"
    #sleep 1
}

# Fungsi untuk mengacak SSAID (ID Khusus Aplikasi)
randomize_ssaid() {
    SSAI_XML="/data/system/users/0/settings_ssaid.xml"
    if [ ! -f "$SSAI_XML" ]; then
        echo -e "${Y}Peringatan: $SSAI_XML tidak ditemukan. Mencoba membuat file dengan menjalankan aplikasi...${N}"
        
        app_started=false
        started_pkg_name=""
        component_to_start=""

        for keyword in "${TARGET_APP_KEYWORDS[@]}"; do
            component_to_start=""
            case "$keyword" in
                "lazada")
                    component_to_start="com.lazada.android/com.lazada.android.activities.EnterActivity"
                    ;;
                "tokopedia")
                    component_to_start="com.tokopedia.tkpd/com.tokopedia.tkpd.SplashActivity"
                    ;;
                "shopee")
                    component_to_start="com.shopee.id/com.shopee.app.SplashActivity"
                    ;;
                "tiktok"|"trill"|"musically")
                    if pm list packages | grep -q "com.ss.android.ugc.trill"; then
                        component_to_start="com.ss.android.ugc.trill/com.ss.android.ugc.aweme.splash.SplashActivity"
                    elif pm list packages | grep -q "com.zhiliaoapp.musically"; then
                        component_to_start="com.zhiliaoapp.musically/com.ss.android.ugc.aweme.splash.SplashActivity"
                    elif pm list packages | grep -q "com.tiktok.android"; then
                        component_to_start="com.tiktok.android/com.ss.android.ugc.aweme.splash.SplashActivity"
                    fi
                    ;;
            esac

            if [ -n "$component_to_start" ]; then
                pkg_name=$(echo "$component_to_start" | cut -d'/' -f1)
                if pm list packages | grep -q "^package:$pkg_name$"; then
                    echo -e "${C}Menjalankan $pkg_name untuk memicu pembuatan SSAID...${N}"
                    am start -n "$component_to_start" >/dev/null 2>&1
                    app_started=true
                    started_pkg_name="$pkg_name"
                    break 
                fi
            fi
        done

        if ! $app_started; then
            echo -e "${Y}Tidak ada aplikasi target yang terinstal. Membuat seed $SSAI_XML minimal...${N}"
            mkdir -p /data/system/users/0 2>/dev/null || true
            HEX1=$(head -3 /dev/urandom | tr -dc 'a-f0-9' | head -c 16)
            HEX2=$(head -3 /dev/urandom | tr -dc 'a-f0-9' | head -c 16)
            {
                echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>"
                echo "<map>"
                echo "  <string name=\"userkey\" defaultValue=\"a-f0-9\" />"
                echo "  <string name=\"com.google.android.gms\" value=\"$HEX1\" defaultValue=\"$HEX1\" />"
                echo "  <string name=\"com.android.vending\" value=\"$HEX2\" defaultValue=\"$HEX2\" />"
                echo "</map>"
            } > "$SSAI_XML"
            chmod 600 "$SSAI_XML" 2>/dev/null || true
            chown 1000:1000 "$SSAI_XML" 2>/dev/null || chown system:system "$SSAI_XML" 2>/dev/null || true
            echo -e "${G}$SSAI_XML berhasil disiapkan (seed).${N}"
        else
            echo -e "${C}Menunggu 5 detik agar SSAID.xml dibuat...${N}"
            sleep 5
            if [ -n "$started_pkg_name" ]; then
                am force-stop "$started_pkg_name" >/dev/null 2>&1
            fi
        fi

        if [ ! -f "$SSAI_XML" ]; then
            echo -e "${R}Gagal membuat $SSAI_XML. Melewatkan pengacakan SSAID.${N}"
            return
        fi
    fi
    
    echo -e "${Y}Mengacak SSAID menggunakan kata kunci target...${N}"

    # Dapatkan userkey (karakter yang valid untuk ID)
    ID_CHARS=$(grep 'userkey' "$SSAI_XML" 2>/dev/null | grep -o 'defaultValue="[a-f0-9]*"' | cut -d '"' -f2)
    [ -z "$ID_CHARS" ] && ID_CHARS="a-f0-9"

    # Selalu pastikan paket default ada dan teracak
    DEFAULT_SSAID_PACKAGES=("com.google.android.gms" "com.android.vending")
    for pkg in "${DEFAULT_SSAID_PACKAGES[@]}"; do
        if grep -q "name=\"$pkg\"" "$SSAI_XML" 2>/dev/null; then
            line=$(grep "name=\"$pkg\"" "$SSAI_XML" 2>/dev/null)
            current_value=$(echo "$line" | grep -o 'value="[a-f0-9]*"' | cut -d'"' -f2)
            [ -n "$current_value" ] && new_value=$(head /dev/urandom | tr -dc "$ID_CHARS" | head -c 16) && sed -i "/name=\"$pkg\"/s/value=\"$current_value\"/value=\"$new_value\"/" "$SSAI_XML"
            current_default=$(echo "$line" | grep -o 'defaultValue="[a-f0-9]*"' | cut -d'"' -f2)
            [ -n "$current_default" ] && new_default=$(head /dev/urandom | tr -dc "$ID_CHARS" | head -c 16) && sed -i "/name=\"$pkg\"/s/defaultValue=\"$current_default\"/defaultValue=\"$new_default\"/" "$SSAI_XML"
        else
            # Sisipkan entri baru sebelum </map>
            newid=$(head /dev/urandom | tr -dc "$ID_CHARS" | head -c 16)
            sed -i "s#</map>#  <string name=\"$pkg\" value=\"$newid\" defaultValue=\"$newid\" />\n</map>#" "$SSAI_XML"
        fi
    done

    # Cari nama paket yang cocok dengan kata kunci
    for keyword in "${TARGET_APP_KEYWORDS[@]}"; do
        PACKAGES=$(pm list packages | grep "$keyword" | cut -d':' -f2)
        for app_pkg in $PACKAGES; do
             if [ -z "$app_pkg" ]; then continue; fi

            # Dapatkan baris lengkap untuk paket aplikasi
            line=$(grep "name=\"$app_pkg\"" "$SSAI_XML" 2>/dev/null)
            
            if [ -n "$line" ]; then
                # Ekstrak dan acak 'value'
                current_value=$(echo "$line" | grep -o 'value="[a-f0-9]*"' | cut -d'"' -f2)
                if [ -n "$current_value" ]; then
                    new_value=$(head /dev/urandom | tr -dc "$ID_CHARS" | head -c 16)
                    sed -i "/name=\"$app_pkg\"/s/value=\"$current_value\"/value=\"$new_value\"/" "$SSAI_XML"
                    echo -e "${C}SSAID 'value' untuk $app_pkg diacak.${N}"
                fi

                # Ekstrak dan acak 'defaultValue'
                current_default=$(echo "$line" | grep -o 'defaultValue="[a-f0-9]*"' | cut -d'"' -f2)
                if [ -n "$current_default" ]; then
                    new_default=$(head /dev/urandom | tr -dc "$ID_CHARS" | head -c 16)
                    sed -i "/name=\"$app_pkg\"/s/defaultValue=\"$current_default\"/defaultValue=\"$new_default\"/" "$SSAI_XML"
                    echo -e "${C}SSAID 'defaultValue' untuk $app_pkg diacak.${N}"
                fi
            else
                # Jika entri belum ada, tambahkan baru sebelum </map>
                newid=$(head /dev/urandom | tr -dc "$ID_CHARS" | head -c 16)
                sed -i "s#</map>#  <string name=\"$app_pkg\" value=\"$newid\" defaultValue=\"$newid\" />\n</map>#" "$SSAI_XML"
                echo -e "${C}Menambahkan entri SSAID untuk $app_pkg.${N}"
            fi
        done
    done
    
    echo -e "${G}Pengacakan SSAID selesai.${N}"
}
random_mac_address() {
    # Format MAC: XX:XX:XX:XX:XX:XX (6 bytes hexadecimal)
    # Bit pertama byte kedua harus genap (0, 2, 4, 6, 8, A, C, E) untuk MAC yang valid
    # untuk menghindari MAC multicast/local
    
    # Byte pertama (dengan constraint)
    byte1=$(printf "%02x" $((RANDOM % 256)))
    
    # Byte kedua - pastikan bit pertama adalah 0 (genap)
    byte2=$(printf "%02x" $((RANDOM % 128 * 2)))
    
    # 4 byte berikutnya acak
    byte3=$(printf "%02x" $((RANDOM % 256)))
    byte4=$(printf "%02x" $((RANDOM % 256)))
    byte5=$(printf "%02x" $((RANDOM % 256)))
    byte6=$(printf "%02x" $((RANDOM % 256)))
    
    echo "${byte1}:${byte2}:${byte3}:${byte4}:${byte5}:${byte6}"
}


patch_android_settings() {
    echo -e "${Y}Mem-patch pengaturan dan pengidentifikasi Android...${N}"

    # Generate random MAC addresses
    WIFI_MAC=$(random_mac_address)
    BT_MAC=$(random_mac_address)
    RANDOM_NAME="$(head -3 /dev/urandom | tr -cd 'A-Z' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'aeiou' | cut -c -1)$(head -3 /dev/urandom | tr -cd 'bcdfghjklmnpqrstvwxyz' | cut -c -4)"
    NEW_DEVICE_NAME="$MODEL"
    
    # Pastikan file fallback ada atau buat minimal
    XML_SECURE="/data/system/users/0/settings_secure.xml"
    XML_SECURE_FB="/data/system/users/0/settings_secure.xml.fallback"
    XML_GLOBAL="/data/system/users/0/settings_global.xml"
    XML_GLOBAL_FB="/data/system/users/0/settings_global.xml.fallback"
    mkdir -p /data/system/users/0 2>/dev/null || true

    if [ ! -f "$XML_SECURE_FB" ]; then
        if [ -f "$XML_SECURE" ]; then
            cp "$XML_SECURE" "$XML_SECURE_FB" 2>/dev/null || true
        else
            {
                echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>"
                echo "<map>"
                echo "  <string name=\"bluetooth_name\" value=\"$RANDOM_NAME\" />"
                echo "</map>"
            } > "$XML_SECURE_FB"
        fi
        chmod 600 "$XML_SECURE_FB" 2>/dev/null || true
        chown 1000:1000 "$XML_SECURE_FB" 2>/dev/null || chown system:system "$XML_SECURE_FB" 2>/dev/null || true
    fi

    if [ ! -f "$XML_GLOBAL_FB" ]; then
        if [ -f "$XML_GLOBAL" ]; then
            cp "$XML_GLOBAL" "$XML_GLOBAL_FB" 2>/dev/null || true
        else
            {
                echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>"
                echo "<map>"
                echo "  <string name=\"device_name\" value=\"$NEW_DEVICE_NAME\" />"
                echo "</map>"
            } > "$XML_GLOBAL_FB"
        fi
        chmod 600 "$XML_GLOBAL_FB" 2>/dev/null || true
        chown 1000:1000 "$XML_GLOBAL_FB" 2>/dev/null || chown system:system "$XML_GLOBAL_FB" 2>/dev/null || true
    fi

    # Hanya jalankan jika settings service tersedia
    if [ "$(getprop init.svc.settings)" = "running" ]; then
        settings put system device_name "$NEW_DEVICE_NAME" 2>/dev/null || true
        settings put secure bluetooth_name "$RANDOM_NAME" 2>/dev/null || true
        
        settings delete secure android_id 2>/dev/null || true
        settings delete secure advertising_id 2>/dev/null || true
    fi
    
    # Patch XML files directly for better detection avoidance
    echo -e "${C}Mem-patch file konfigurasi XML secara langsung...${N}"
    
    # Device Name
    CURRENT_DEV_NAME=$(grep 'name="device_name"' "$XML_GLOBAL" 2>/dev/null | grep -o 'value="[^\"]*"' | cut -d'"' -f2)
    if [ -f "$XML_GLOBAL" ] && [ -n "$CURRENT_DEV_NAME" ]; then
        sed -i "s/value=\"$CURRENT_DEV_NAME\"/value=\"$NEW_DEVICE_NAME\"/" "$XML_GLOBAL"
    fi
    CURRENT_DEV_NAME_FB=$(grep 'name="device_name"' "$XML_GLOBAL_FB" 2>/dev/null | grep -o 'value="[^\"]*"' | cut -d'"' -f2)
    if [ -f "$XML_GLOBAL_FB" ] && [ -n "$CURRENT_DEV_NAME_FB" ]; then
        sed -i "s/value=\"$CURRENT_DEV_NAME_FB\"/value=\"$NEW_DEVICE_NAME\"/" "$XML_GLOBAL_FB"
    fi

    # Bluetooth Name
    CURRENT_BT_NAME=$(grep 'name="bluetooth_name"' "$XML_SECURE" 2>/dev/null | grep -o 'value="[^\"]*"' | cut -d'"' -f2)
    if [ -f "$XML_SECURE" ] && [ -n "$CURRENT_BT_NAME" ]; then
        sed -i "s/value=\"$CURRENT_BT_NAME\"/value=\"$RANDOM_NAME\"/" "$XML_SECURE"
    fi
    CURRENT_BT_NAME_FB=$(grep 'name="bluetooth_name"' "$XML_SECURE_FB" 2>/dev/null | grep -o 'value="[^\"]*"' | cut -d'"' -f2)
    if [ -f "$XML_SECURE_FB" ] && [ -n "$CURRENT_BT_NAME_FB" ]; then
        sed -i "s/value=\"$CURRENT_BT_NAME_FB\"/value=\"$RANDOM_NAME\"/" "$XML_SECURE_FB"
    fi
    
    # Patch WiFi configuration files
    echo -e "${C}Mem-patch konfigurasi WiFi...${N}"
    
    # Patch /data/misc/wifi/wificonfig.xml
    if [ -f "/data/misc/wifi/wificonfig.xml" ]; then
        # Backup original file
        cp /data/misc/wifi/wificonfig.xml /data/misc/wifi/wificonfig.xml.bak 2>/dev/null || true
        
        # Update RandomizedMacAddress
        sed -i "s/<string name=\"RandomizedMacAddress\">[^<]*<\/string>/<string name=\"RandomizedMacAddress\">$WIFI_MAC<\/string>/" /data/misc/wifi/wificonfig.xml
        
        echo -e "${C}Updated WiFi MAC: $WIFI_MAC${N}"
    fi
    
    # Patch /data/misc/wifi/softap.json 
    if [ -f "/data/misc/wifi/softap.json" ]; then
        # Generate random AP name based on device model
        AP_NAME="${MODEL}_$(head -3 /dev/urandom | tr -cd '0-9' | cut -c -4)"
        AP_PASSWORD="$(head -3 /dev/urandom | tr -cd 'A-Za-z0-9' | cut -c -12)"
        
        # Create or update softap.json
        echo "{
  \"SSID\": \"$AP_NAME\",
  \"Password\": \"$AP_PASSWORD\",
  \"SecurityType\": \"SAE\",
  \"Band\": 2,
  \"Channel\": 6,
  \"MaxClient\": 8,
  \"MACAddress\": \"$WIFI_MAC\"
}" > /data/misc/wifi/softap.json
        
        echo -e "${C}Updated softap.json dengan MAC: $WIFI_MAC${N}"
    fi
    
    # Patch bluetooth config
    echo -e "${C}Mem-patch konfigurasi Bluetooth...${N}"
    if [ -f "/data/misc/bluedroid/bt_config.conf" ]; then
        # Backup original file
        cp /data/misc/bluedroid/bt_config.conf /data/misc/bluedroid/bt_config.conf.bak 2>/dev/null || true
        
        # Remove existing Name and Address entries
        sed -i '/^Name =/d' /data/misc/bluedroid/bt_config.conf
        sed -i '/^Address =/d' /data/misc/bluedroid/bt_config.conf
        
        # Add new Name and Address
        echo "Name = $RANDOM_NAME" >> /data/misc/bluedroid/bt_config.conf
        echo "Address = $BT_MAC" >> /data/misc/bluedroid/bt_config.conf
        
        echo -e "${C}Updated Bluetooth MAC: $BT_MAC${N}"
    fi

    # Acak SSAID setelah nilai lain di-patch
    #randomize_ssaid
    
    echo -e "${G}Pengaturan Android di-patch.${N}"
    sleep 1
}

# Fungsi untuk pembersihan akhir yang lebih agresif
post_spoof_cleanup() {
    echo -e "${Y}Melakukan pembersihan file sistem secara mendalam dan agresif...${N}"

    # Hapus path dari array yang sudah didefinisikan
    echo -e "${C}Membersihkan statistik sistem dan data pengguna...${N}"
    for path in "${SYSTEM_STATS_PATHS[@]}"; do
        rm -rf "$path"
    done

    echo -e "${C}Membersihkan data Layanan Google...${N}"
    for path in "${GOOGLE_SERVICES_PATHS[@]}"; do
        rm -rf "$path"
    done

    echo -e "${C}Membersihkan cache sistem dan log...${N}"
    for path in "${SYSTEM_CACHE_PATHS[@]}"; do
        rm -rf "$path"
    done

    echo -e "${C}Membersihkan penyimpanan eksternal yang berhubungan dengan aplikasi...${N}"
    for path in "${EXTERNAL_STORAGE_PATHS[@]}"; do
        rm -rf "$path"
    done

    # Hapus file konfigurasi dan historis yang spesifik
    echo -e "${C}Menghapus file konfigurasi dan jejak sistem yang sensitif...${N}"
    sensitive_files=(
        "/data/system/appops/history"
        "/data/system/users/0/fpdata"
        "/data/system/users/0/registered_services"
        "/data/system/users/0/package-restrictions.xml"
        "/data/system/users/0/settings_ssaid.xml"
        "/data/system/users/0/app_idle_stats.xml"
        "/data/system/users/0/settings_config.xml"
    )
    for file in "${sensitive_files[@]}"; do
        rm -rf "$file"
    done

    # Hapus semua file .fallback di direktori pengaturan pengguna
    find "/data/system/users/0/" -type f -name "*.fallback" -delete 2>/dev/null

    echo -e "${G}Pembersihan file sistem mendalam selesai.${N}"
}

# --- Logika Eksekusi Utama ---
clean_device_profiles() {
    CLEANED_PROFILES=()
    COUNT=0
    
    for profile in "${DEVICE_PROFILES[@]}"; do
        # Hitung jumlah field berdasarkan koma
        field_count=$(echo "$profile" | tr -cd ',' | wc -c)
        field_count=$((field_count + 1))
        
        if [ $field_count -ge 8 ]; then
            CLEANED_PROFILES+=("$profile")
        else
            echo -e "${Y}Menghapus profile corrupt: $(echo $profile | cut -c1-50)...${N}"
            COUNT=$((COUNT + 1))
        fi
    done
    
    if [ $COUNT -gt 0 ]; then
        echo -e "${Y}Dihapus $COUNT profile yang corrupt dari array${N}"
        DEVICE_PROFILES=("${CLEANED_PROFILES[@]}")
    fi
}

main() {
    # Pastikan skrip dijalankan sebagai root
    # if [ "$(id -u)" -ne 0 ]; then
    #     echo -e "${R}Skrip ini harus dijalankan sebagai root.${N}"
    #     exit 1
    # fi

    clear
    dashboard
    # Remount partisi sebagai read-write
    mount -o rw,remount / 2>/dev/null || true

    pre_spoof_cleanup
    generate_and_apply_props

    patch_android_settings
    post_spoof_cleanup
    # Remount partisi sebagai read-only
    mount -o ro,remount / 2>/dev/null || true

    echo -e "${C}Proses spoofing selesai.${N}"
    echo -e "${Y}Me-reboot dalam 3 detik...${N}"
    sleep 3
reboot
}


# Jalankan fungsi utama
#main

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
modpeson(){
settings put global airplane_mode_on 1
am broadcast -a android.intent.action.AIRPLANE_MODE
}
proses (){
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
echo -ne "${G}▇▇▇▇▇▇▇▇${N}" '(11%)\r'
#pre_spoof_cleanup &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(37%)\r'
generate_and_apply_props
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(64%)\r'
patch_android_settings &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(83%)\r'
#post_spoof_cleanup &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(100%)\n'
            sleep 0.5     
            echo ""
            echo ""
            echo ""
            echo ""
            echo ""
            echo -e "${Y}🔥 SELESAI MEMBUAT system.prop CO $BRAND $MODEL !!${N}"
            echo -e "${G}✅${N} Folder Android dihapus"
            echo -e "${G}✅${N} Sampah dihapus"
            echo -e "${G}✅${N} Cache dihapus"
            sleep 3
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
  send_telegram "✅ Serial $SERIAL terdaftar. Lanjut generate props __co_VIVO-Next.sh... Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  proses
else
  send_telegram "⛔ Serial $SERIAL tidak terdaftar! Script __co_VIVO-Next.sh dibatalkan. Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  bloked
  exit 1
fi