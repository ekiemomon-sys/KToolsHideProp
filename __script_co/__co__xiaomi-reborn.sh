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
# Xiaomi
"Xiaomi,Redmi K30 PRO,lmi,11,xiaomi/lmi_global/lmi:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,lmi_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,Redmi K30 Pro"
"Xiaomi,Mi 9T Pro,raphaelin,11,xiaomi/raphaelin_global/raphaelin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,raphaelin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-12-01,Redmi K20 Pro"
"Xiaomi,Mi 9T,davinci,11,xiaomi/davinci_global/davinci:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,davinci_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-12-01,Mi 9T"
"Xiaomi,REDMI K80,zorn,11,xiaomi/zorn_global/zorn:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,zorn_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-12-01,24117RK2CC"
"Xiaomi,REDMI K80 Pro,miro,11,xiaomi/miro_global/miro:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,miro_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-12-01,24122RKC7C"
"Xiaomi,REDMI K80 Ultra,dali,11,xiaomi/dali_global/dali:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,dali_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-12-01,25060RK16C"
"Xiaomi,REDMI Turbo 4,rodin,11,xiaomi/rodin_global/rodin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,rodin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-12-01,24129RT7CC"
"Xiaomi,REDMI Turbo 4 Pro,onyx,11,xiaomi/onyx_global/onyx:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,onyx_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-12-01,25053RT47C"
"Xiaomi,Redmi 7A,pine,11,xiaomi/pine_global/pine:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,pine_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-07-01,Redmi 7A"
"Xiaomi,Redmi Note 7,lavender,11,xiaomi/lavender_global/lavender:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,lavender_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-01-01,Redmi Note 7"
"Xiaomi,Redmi 10,eos,11,xiaomi/eos_global/eos:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,eos_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-06-01,21061119DG"
"Xiaomi,Redmi 10,fog,11,xiaomi/fog_global/fog:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,fog_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-06-01,220333QBI"
"Xiaomi,Redmi 10 5G,light,12,xiaomi/light_global/light:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,light_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-04-01,22041219G"
"Xiaomi,Redmi 10 5G,thunder,12,xiaomi/thunder_global/thunder:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,thunder_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-04-01,22041219NY"
"Xiaomi,Redmi 10A,dandelion,11,xiaomi/dandelion_global/dandelion:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,dandelion_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-06-01,220233L2C"
"Xiaomi,Redmi 10C,fog,11,xiaomi/fog_global/fog:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,fog_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-06-01,220333QAG"
"Xiaomi,Redmi 10X,apricot,11,xiaomi/apricot_global/apricot:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,apricot_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,M2004J7AC"
"Xiaomi,Redmi 10X Pro,banana,11,xiaomi/banana_global/banana:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,banana_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,M2004J7BC"
"Xiaomi,Redmi 11 Prime,rock,12,xiaomi/rock_global/rock:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,rock_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-07-01,22071219AI"
"Xiaomi,Redmi 11 Prime 5G,light,12,xiaomi/light_global/light:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,light_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-04-01,22041219I"
"Xiaomi,Redmi 12,fire,12,xiaomi/fire_global/fire:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,fire_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-05-01,23053RN02A"
"Xiaomi,Redmi 12 5G,river,12,xiaomi/river_global/river:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,river_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-07-01,23076RA4BR"
"Xiaomi,Redmi 12C,aether,12,xiaomi/aether_global/aether:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,aether_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-07-01,22126RN91Y"
"Xiaomi,Redmi 13,moon,12,xiaomi/moon_global/moon:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,moon_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-08-01,24040RN64Y"
"Xiaomi,Redmi 13 5G,breeze,12,xiaomi/breeze_global/breeze:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,breeze_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-08-01,2406ERN9CI"
"Xiaomi,Redmi 13C,gale,12,xiaomi/gale_global/gale:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,gale_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-08-01,23100RN82L"
"Xiaomi,Redmi 13C 5G,air,12,xiaomi/air_global/air:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,air_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-08-01,23124RN87I"
"Xiaomi,Redmi 14C,lake,12,xiaomi/lake_global/lake:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,lake_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-09-01,2409BRN2CY"
"Xiaomi,Redmi 14C 5G,flame,12,xiaomi/flame_global/flame:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,flame_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-09-01,2411DRN47I"
"Xiaomi,Redmi 15 5G,spring,12,xiaomi/spring_global/spring:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,spring_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-10-01,25057RN09E"
"Xiaomi,Redmi 15 5G,spring,12,xiaomi/spring_global/spring:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,spring_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-10-01,25057RN09G"
"Xiaomi,Redmi 9,cattail,11,xiaomi/cattail_global/cattail:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,cattail_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,M2006C3MII"
"Xiaomi,Redmi 9,lancelot,11,xiaomi/lancelot_global/lancelot:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,lancelot_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,M2004J19G"
"Xiaomi,Redmi 9 Power,lime,11,xiaomi/lime_global/lime:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,lime_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,M2010J19SI"
"Xiaomi,Redmi 9A,dandelion,11,xiaomi/dandelion_global/dandelion:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,dandelion_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,M2006C3LC"
"Xiaomi,Redmi 9C,angelica,11,xiaomi/angelica_global/angelica:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,angelica_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,M2006C3MG"
"Xiaomi,Redmi 9T,lemon,11,xiaomi/lemon_global/lemon:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,lemon_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,M2010J19SY"
"Xiaomi,Redmi A1,ice,11,xiaomi/ice_global/ice:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,ice_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-07-01,220733SG"
"Redmi,Redmi A1,ice,11,xiaomi/ice_global/ice:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,ice_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-07-01,220733SL"
"Redmi,Redmi A1+,snow,11,xiaomi/snow_global/snow:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,snow_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-07-01,220733SFG"
"Redmi,Redmi A1+,snow,11,xiaomi/snow_global/snow:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,snow_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2022-07-01,220743FI"
"Redmi,Redmi A2,cloud,11,xiaomi/cloud_global/cloud:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,cloud_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2023-02-01,23026RN54G"
"Redmi,Redmi A2,cloud,11,xiaomi/cloud_global/cloud:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,cloud_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2023-02-01,23028RN4DG"
"Redmi,Redmi A2+,water,11,xiaomi/water_global/water:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,water_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2023-02-01,23028RNCAG"
"Redmi,Redmi A3,blue,12,xiaomi/blue_global/blue:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,blue_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,23129RN51H"
"Redmi,Redmi A3,blue,12,xiaomi/blue_global/blue:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,blue_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,23129RN51X"
"Redmi,Redmi A3,blue,12,xiaomi/blue_global/blue:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,blue_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,2312CRNCCL"
"Redmi,Redmi A3 Pro,pond,12,xiaomi/pond_global/pond:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,pond_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-01-01,2409BRN2CG"
"Redmi,Redmi A3x,klein,12,xiaomi/klein_global/klein:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,klein_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-01-01,24044RN32L"
"Redmi,Redmi A3x,klein,12,xiaomi/klein_global/klein:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,klein_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-01-01,24048RN6CG"
"Redmi,Redmi A3x,klein,12,xiaomi/klein_global/klein:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,klein_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-01-01,24048RN6CI"
"Redmi,Redmi A5,serenity,12,xiaomi/serenity_global/serenity:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,serenity_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2025-01-01,25028RN03A"
"Redmi,Redmi A5,serenity,12,xiaomi/serenity_global/serenity:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,serenity_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2025-01-01,25028RN03I"
"Redmi,Redmi A5,serenity,12,xiaomi/serenity_global/serenity:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,serenity_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2025-01-01,25028RN03L"
"Redmi,Redmi A5,serenity,12,xiaomi/serenity_global/serenity:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,serenity_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2025-01-01,25028RN03Y"
"Redmi,Redmi K20,davinci,11,xiaomi/davinci_global/davinci:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,davinci_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-06-01,Mi 9T"
"Redmi,Redmi K20,davinci,11,xiaomi/davinci_global/davinci:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,davinci_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-06-01,Redmi K20"
"Redmi,Redmi K20,davinciin,11,xiaomi/davinciin_global/davinciin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,davinciin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-06-01,Redmi K20"
"Redmi,Redmi K20 Pro,raphael,11,xiaomi/raphael_global/raphael:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,raphael_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,Mi 9T Pro"
"Redmi,Redmi K20 Pro,raphael,11,xiaomi/raphael_global/raphael:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,raphael_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,Redmi K20 Pro"
"Redmi,Redmi K20 Pro,raphael,11,xiaomi/raphael_global/raphael:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,raphael_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,Redmi K20 Pro Premium Edition"
"Redmi,Redmi K30,phoenix,11,xiaomi/phoenix_global/phoenix:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,phoenix_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-12-01,Redmi K30"
"Redmi,Redmi K30 5G,picasso,11,xiaomi/picasso_global/picasso:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,picasso_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-01-01,Redmi K30 5G"
"Redmi,Redmi K30 Ultra,cezanne,11,xiaomi/cezanne_global/cezanne:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,cezanne_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-08-01,M2006J10C"
"Redmi,Redmi K30S Ultra,apollo,11,xiaomi/apollo_global/apollo:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,apollo_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-10-01,M2007J3SC"
"Redmi,Redmi K30i 5G,picasso,11,xiaomi/picasso_global/picasso:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,picasso_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-05-01,Redmi K30i 5G"
"Redmi,Redmi K40,alioth,12,xiaomi/alioth_global/alioth:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,alioth_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2012K11AC"
"Redmi,Redmi K40 Pro,haydn,12,xiaomi/haydn_global/haydn:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,haydn_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2012K11C"
"Redmi,Redmi K40 Pro +,haydn,12,xiaomi/haydn_global/haydn:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,haydn_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2012K11C"
"Redmi,Redmi K40S,munch,12,xiaomi/munch_global/munch:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,munch_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-03-01,22021211RC"
"Redmi,Redmi K50,rubens,12,xiaomi/rubens_global/rubens:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,rubens_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-04-01,22041211AC"
"Redmi,Redmi K50 Pro,matisse,12,xiaomi/matisse_global/matisse:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,matisse_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,22011211C"
"Redmi,Redmi K50G,ingres,12,xiaomi/ingres_global/ingres:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,ingres_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-12-01,21121210C"
"Redmi,Redmi K50i,xagain,12,xiaomi/xagain_global/xagain:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,xagain_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-04-01,22041216I"
"Redmi,Redmi K60,mondrian,12,xiaomi/mondrian_global/mondrian:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,mondrian_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-01-01,23013RK75C"
"Redmi,Redmi K60 Pro,socrates,12,xiaomi/socrates_global/socrates:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,socrates_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-12-01,22127RK46C"
"Redmi,Redmi K60 Ultra,corot,12,xiaomi/corot_global/corot:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,corot_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-08-01,23078RKD5C"
"Redmi,Redmi K60E,rembrandt,12,xiaomi/rembrandt_global/rembrandt:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,rembrandt_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-12-01,22122RK93C"
"Redmi,Redmi K70,vermeer,12,xiaomi/vermeer_global/vermeer:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,vermeer_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-11-01,23113RKC6C"
"Redmi,Redmi K70 Pro,manet,12,xiaomi/manet_global/manet:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,manet_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-11-01,23117RK66C"
"Redmi,Redmi K70 Ultra,rothko,12,xiaomi/rothko_global/rothko:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,rothko_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-07-01,2407FRK8EC"
"Redmi,Redmi K70E,duchamp,12,xiaomi/duchamp_global/duchamp:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,duchamp_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-11-01,2311DRK48C"
"Redmi,Redmi Note 10,camellia,11,xiaomi/camellia_global/camellia:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,camellia_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-03-01,M2103K19C"
"Redmi,Redmi Note 10,sunny,11,xiaomi/sunny_global/sunny:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,sunny_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2101K7AG"
"Redmi,Redmi Note 10,sunny,11,xiaomi/sunny_global/sunny:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,sunny_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2101K7AI"
"Redmi,Redmi Note 10 5G,camellian,11,xiaomi/camellian_global/camellian:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,camellian_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-03-01,M2103K19G"
"Redmi,Redmi Note 10 JE,XIG02,11,xiaomi/XIG02_global/XIG02:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,XIG02_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,XIG02"
"Redmi,Redmi Note 10 Pro,chopin,11,xiaomi/chopin_global/chopin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,chopin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-06-01,21061110AG"
"Redmi,Redmi Note 10 Pro,sweet,11,xiaomi/sweet_global/sweet:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,sweet_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2101K6G"
"Redmi,Redmi Note 10 Pro,sweetin,11,xiaomi/sweetin_global/sweetin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,sweetin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2101K6P"
"Redmi,Redmi Note 10 Pro Max,sweetin,11,xiaomi/sweetin_global/sweetin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,sweetin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2101K6I"
"Redmi,Redmi Note 10 pro,chopin,11,xiaomi/chopin_global/chopin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,chopin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-04-01,M2104K10AC"
"Redmi,Redmi Note 10S,maltose,11,xiaomi/maltose_global/maltose:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,maltose_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2101K7BL"
"Redmi,Redmi Note 10S,secret,11,xiaomi/secret_global/secret:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,secret_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2101K7BG"
"Redmi,Redmi Note 10S,secret,11,xiaomi/secret_global/secret:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,secret_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2101K7BI"
"Redmi,Redmi Note 10T,camellian,11,xiaomi/camellian_global/camellian:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,camellian_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-03-01,M2103K19Y"
"Redmi,Redmi Note 10T 5G,camellia,11,xiaomi/camellia_global/camellia:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,camellia_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-03-01,M2103K19I"
"Redmi,Redmi Note 10T 5G,camellia,11,xiaomi/camellia_global/camellia:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,camellia_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-03-01,TBD"
"Redmi,Redmi Note 11,spes,12,xiaomi/spes_global/spes:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,spes_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201117TG"
"Redmi,Redmi Note 11,spes,12,xiaomi/spes_global/spes:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,spes_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201117TI"
"Redmi,Redmi Note 11,spes,12,xiaomi/spes_global/spes:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,spes_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201117TL"
"Redmi,Redmi Note 11,spesn,12,xiaomi/spesn_global/spesn:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,spesn_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201117TY"
"Redmi,Redmi Note 11 4G,selene,12,xiaomi/selene_global/selene:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,selene_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-12-01,21121119SC"
"Redmi,Redmi Note 11 5G,evergo,12,xiaomi/evergo_global/evergo:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,evergo_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-09-01,21091116AC"
"Redmi,Redmi Note 11 Pro,vida,12,xiaomi/vida_global/vida:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,vida_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201116TI"
"Redmi,Redmi Note 11 Pro,viva,12,xiaomi/viva_global/viva:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,viva_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201116TG"
"Redmi,Redmi Note 11 Pro 5G,veux,12,xiaomi/veux_global/veux:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,veux_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201116SG"
"Redmi,Redmi Note 11 Pro 5G,veux,12,xiaomi/veux_global/veux:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,veux_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201116SR"
"Redmi,Redmi Note 11 Pro+ 5G,peux,12,xiaomi/peux_global/peux:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,peux_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201116SI"
"Redmi,Redmi Note 11 SE,secret,12,xiaomi/secret_global/secret:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,secret_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-08-01,22087RA4DI"
"Redmi,Redmi Note 11 SE,secret,12,xiaomi/secret_global/secret:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,secret_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-01-01,M2101K7BI"
"Redmi,Redmi Note 11E,light,12,xiaomi/light_global/light:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,light_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-04-01,22041219C"
"Redmi,Redmi Note 11E Pro,veux,12,xiaomi/veux_global/veux:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,veux_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201116SC"
"Redmi,Redmi Note 11S,fleur,12,xiaomi/fleur_global/fleur:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,fleur_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201117SY"
"Redmi,Redmi Note 11S,miel,12,xiaomi/miel_global/miel:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,miel_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201117SG"
"Redmi,Redmi Note 11S,miel,12,xiaomi/miel_global/miel:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,miel_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201117SI"
"Redmi,Redmi Note 11S,miel,12,xiaomi/miel_global/miel:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,miel_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201117SL"
"Redmi,Redmi Note 11S 5G,opal,12,xiaomi/opal_global/opal:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,opal_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-03-01,22031116BG"
"Redmi,Redmi Note 11T 5G,evergo,12,xiaomi/evergo_global/evergo:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,evergo_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-09-01,21091116AI"
"Redmi,Redmi Note 11T Pro,xaga,12,xiaomi/xaga_global/xaga:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,xaga_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-04-01,22041216C"
"Redmi,Redmi Note 11T Pro +,xagapro,12,xiaomi/xagapro_global/xagapro:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,xagapro_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-04-01,22041216UC"
"Redmi,Redmi Note 12,tapas,12,xiaomi/tapas_global/tapas:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,tapas_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-02-01,23021RAAEG"
"Redmi,Redmi Note 12,tapas,12,xiaomi/tapas_global/tapas:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,tapas_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-02-01,23027RAD4I"
"Redmi,Redmi Note 12,tapas,12,xiaomi/tapas_global/tapas:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,tapas_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-02-01,23028RA60L"
"Redmi,Redmi Note 12,topaz,12,xiaomi/topaz_global/topaz:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,topaz_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-02-01,23021RAA2Y"
"Redmi,Redmi Note 12 5G,sunstone,12,xiaomi/sunstone_global/sunstone:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,sunstone_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101317C"
"Redmi,Redmi Note 12 DISCOVERY EDITION,rubyplus,12,xiaomi/rubyplus_global/rubyplus:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,rubyplus_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101316UC"
"Redmi,Redmi Note 12 Pro,ruby,12,xiaomi/ruby_global/ruby:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,ruby_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101316C"
"Redmi,Redmi Note 12 Pro,sweet,12,xiaomi/sweet_global/sweet:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,sweet_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-09-01,2209116AG"
"Redmi,Redmi Note 12 Pro + 5G,rubypro,12,xiaomi/rubypro_global/rubypro:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,rubypro_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101316UP"
"Redmi,Redmi Note 12 Pro 5G,ruby,12,xiaomi/ruby_global/ruby:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,ruby_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101316G"
"Redmi,Redmi Note 12 Pro 5G,ruby,12,xiaomi/ruby_global/ruby:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,ruby_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101316I"
"Redmi,Redmi Note 12 Pro Speed,redwood,12,xiaomi/redwood_global/redwood:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,redwood_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101320C"
"Redmi,Redmi Note 12 Pro+,rubypro,12,xiaomi/rubypro_global/rubypro:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,rubypro_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101316UCP"
"Redmi,Redmi Note 12 Pro+ 5G,rubypro,12,xiaomi/rubypro_global/rubypro:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,rubypro_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22101316UG"
"Redmi,Redmi Note 12S,ocean,12,xiaomi/ocean_global/ocean:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,ocean_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-03-01,2303CRA44A"
"Redmi,Redmi Note 12S,ocean,12,xiaomi/ocean_global/ocean:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,ocean_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-03-01,2303ERA42L"
"Redmi,Redmi Note 12S,sea,12,xiaomi/sea_global/sea:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,sea_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-03-01,23030RAC7Y"
"Redmi,Redmi Note 13,sapphire,12,xiaomi/sapphire_global/sapphire:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,sapphire_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,23129RA5FL"
"Redmi,Redmi Note 13,sapphire,12,xiaomi/sapphire_global/sapphire:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,sapphire_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,23129RAA4G"
"Redmi,Redmi Note 13,sapphiren,12,xiaomi/sapphiren_global/sapphiren:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,sapphiren_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,23124RA7EO"
"Redmi,Redmi Note 13 5G,gold,12,xiaomi/gold_global/gold:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,gold_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,2312DRAABC"
"Redmi,Redmi Note 13 5G,gold,12,xiaomi/gold_global/gold:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,gold_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,2312DRAABI"
"Redmi,Redmi Note 13 5G,iron,12,xiaomi/iron_global/iron:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,iron_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-12-01,2312DRAABG"
"Redmi,Redmi Note 13 Pro,emerald,12,xiaomi/emerald_global/emerald:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,emerald_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-11-01,23117RA68G"
"Redmi,Redmi Note 13 Pro 5G,XIG05,12,xiaomi/XIG05_global/XIG05:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,XIG05_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-11-01,XIG05"
"Redmi,Redmi Note 13 Pro+,zircon,12,xiaomi/zircon_global/zircon:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,zircon_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-09-01,23090RA98C"
"Redmi,Redmi Note 13 Pro+ 5G,zircon,12,xiaomi/zircon_global/zircon:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,zircon_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-09-01,23090RA98G"
"Redmi,Redmi Note 13 Pro+ 5G,zircon,12,xiaomi/zircon_global/zircon:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,zircon_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-09-01,23090RA98I"
"Redmi,Redmi Note 13 Pro+ 5G,zircon,12,xiaomi/zircon_global/zircon:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,zircon_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-04-01,24040RA98R"
"Redmi,Redmi Note 13R,breeze,12,xiaomi/breeze_global/breeze:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,breeze_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-06-01,2406ERN9CC"
"Redmi,Redmi Note 13R Pro,gold,12,xiaomi/gold_global/gold:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,gold_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2023-11-01,2311FRAFDC"
"Redmi,Redmi Note 14,tanzanite,12,xiaomi/tanzanite_global/tanzanite:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,tanzanite_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-11-01,24117RN76E"
"Redmi,Redmi Note 14,tanzanite,12,xiaomi/tanzanite_global/tanzanite:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,tanzanite_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-11-01,24117RN76G"
"Redmi,Redmi Note 14,tanzanite,12,xiaomi/tanzanite_global/tanzanite:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,tanzanite_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-11-01,24117RN76L"
"Redmi,Redmi Note 14,tanzanite,12,xiaomi/tanzanite_global/tanzanite:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,tanzanite_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-11-01,24117RN76O"
"Redmi,Redmi Note 14 5G,beryl,12,xiaomi/beryl_global/beryl:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,beryl_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-09-01,24094RAD4C"
"Redmi,Redmi Note 14 5G,beryl,12,xiaomi/beryl_global/beryl:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,beryl_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-09-01,24094RAD4I"
"Redmi,Redmi Note 14 5G,citrine,12,xiaomi/citrine_global/citrine:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,citrine_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-09-01,24094RAD4G"
"Redmi,Redmi Note 14 Pro,malachite,12,xiaomi/malachite_global/malachite:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,malachite_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-09-01,24090RA29C"
"Redmi,Redmi Note 14 Pro,malachite,12,xiaomi/malachite_global/malachite:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,malachite_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-09-01,24090RA29G"
"Redmi,Redmi Note 14 Pro,obsidian,12,xiaomi/obsidian_global/obsidian:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,obsidian_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-11-01,24116RACCG"
"Redmi,Redmi Note 14 Pro 5G,malachite,12,xiaomi/malachite_global/malachite:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,malachite_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-09-01,24090RA29G"
"Redmi,Redmi Note 14 Pro 5G,malachite,12,xiaomi/malachite_global/malachite:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,malachite_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-09-01,24090RA29I"
"Redmi,Redmi Note 14 Pro+,amethyst,12,xiaomi/amethyst_global/amethyst:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,amethyst_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-11-01,24115RA8EC"
"Redmi,Redmi Note 14 Pro+ 5G,amethyst,12,xiaomi/amethyst_global/amethyst:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,amethyst_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-11-01,24115RA8EG"
"Redmi,Redmi Note 14 Pro+ 5G,amethyst,12,xiaomi/amethyst_global/amethyst:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,amethyst_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-11-01,24115RA8EI"
"Redmi,Redmi Note 14S,emerald,12,xiaomi/emerald_global/emerald:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,emerald_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2025-02-01,2502FRA65G"
"Redmi,Redmi Note 8,biloba,11,xiaomi/biloba_global/biloba:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,biloba_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,M1908C3JGG"
"Redmi,Redmi Note 8,ginkgo,11,xiaomi/ginkgo_global/ginkgo:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,ginkgo_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,GINKGO"
"Redmi,Redmi Note 8,ginkgo,11,xiaomi/ginkgo_global/ginkgo:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,ginkgo_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,Redmi Note 8"
"Redmi,Redmi Note 8 Pro,begonia,11,xiaomi/begonia_global/begonia:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,begonia_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,Redmi Note 8 Pro"
"Redmi,Redmi Note 8 Pro,begonia,11,xiaomi/begonia_global/begonia:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,begonia_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,begonia"
"Redmi,Redmi Note 8 pro,begoniain,11,xiaomi/begoniain_global/begoniain:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,begoniain_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-08-01,Redmi Note 8 Pro"
"Redmi,Redmi Note 8T,willow,11,xiaomi/willow_global/willow:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,willow_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-11-01,Redmi Note 8T"
"Redmi,Redmi Note 8T,willow,11,xiaomi/willow_global/willow:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,willow_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2019-11-01,willow"
"Redmi,Redmi Note 9,cannon,11,xiaomi/cannon_global/cannon:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,cannon_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-07-01,M2007J22C"
"Redmi,Redmi Note 9,merlin,11,xiaomi/merlin_global/merlin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,merlin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,M2003J15SC"
"Redmi,Redmi Note 9,merlin,11,xiaomi/merlin_global/merlin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,merlin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,M2003J15SI"
"Redmi,Redmi Note 9,merlin,11,xiaomi/merlin_global/merlin:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,merlin_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,M2003J15SS"
"Redmi,Redmi Note 9,merlinnfc,11,xiaomi/merlinnfc_global/merlinnfc:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,merlinnfc_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,M2003J15SC"
"Redmi,Redmi Note 9,merlinnfc,11,xiaomi/merlinnfc_global/merlinnfc:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,merlinnfc_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,M2003J15SG"
"Redmi,Redmi Note 9 4G,lime,11,xiaomi/lime_global/lime:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,lime_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-10-01,M2010J19SC"
"Redmi,Redmi Note 9 Pro,curtana,11,xiaomi/curtana_global/curtana:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,curtana_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,Redmi Note 9 Pro"
"Redmi,Redmi Note 9 Pro,curtana,11,xiaomi/curtana_global/curtana:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,curtana_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,curtana"
"Redmi,Redmi Note 9 Pro,joyeuse,11,xiaomi/joyeuse_global/joyeuse:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,joyeuse_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,Redmi Note 9 Pro"
"Redmi,Redmi Note 9 Pro Max,excalibur,11,xiaomi/excalibur_global/excalibur:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,excalibur_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,Redmi Note 9 Pro Max"
"Redmi,Redmi Note 9 pro,gauguinpro,11,xiaomi/gauguinpro_global/gauguinpro:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,gauguinpro_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-07-01,M2007J17C"
"Redmi,Redmi Note 9S,curtana,11,xiaomi/curtana_global/curtana:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,curtana_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,Redmi Note 9 Pro"
"Redmi,Redmi Note 9S,curtana,11,xiaomi/curtana_global/curtana:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,curtana_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2020-03-01,Redmi Note 9S"
"Redmi,Redmi Note 9T,cannong,11,xiaomi/cannong_global/cannong:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,cannong_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,A001XM"
"Redmi,Redmi Note 9T,cannong,11,xiaomi/cannong_global/cannong:11/RKQ1.200826.002/V12.5.7.0.RJOMIXM:user/release-keys,cannong_global,RKQ1.200826.002,V12.5.7.0.RJOMIXM,2021-01-01,M2007J22G"
"Redmi,Redmi Turbo 3,peridot,12,xiaomi/peridot_global/peridot:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,peridot_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2024-03-01,24069RA21C"
"Xiaomi,Mi 10 Lite 5G,monet,12,xiaomi/monet_global/monet:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,monet_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-03-01,XIG01"
"Xiaomi,Mi 10 Lite zoom,vangogh,12,xiaomi/vangogh_global/vangogh:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,vangogh_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-04-01,M2002J9E"
"Xiaomi,Mi 10 Ultra,cas,12,xiaomi/cas_global/cas:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,cas_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-08-01,M2007J1SC"
"Xiaomi,Mi 10 lite 5G,monet,12,xiaomi/monet_global/monet:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,monet_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-03-01,M2002J9G"
"Xiaomi,Mi 10 lite 5G,monet,12,xiaomi/monet_global/monet:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,monet_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-03-01,M2002J9S"
"Xiaomi,Mi 10S,thyme,12,xiaomi/thyme_global/thyme:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,thyme_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2102J2SC"
"Xiaomi,Mi 10T,apollo,12,xiaomi/apollo_global/apollo:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,apollo_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-09-01,M2007J3SP"
"Xiaomi,Mi 10T,apollo,12,xiaomi/apollo_global/apollo:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,apollo_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-09-01,M2007J3SY"
"Xiaomi,Mi 10T Lite,gauguin,12,xiaomi/gauguin_global/gauguin:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,gauguin_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-10-01,M2007J17G"
"Xiaomi,Mi 10T Pro,apollo,12,xiaomi/apollo_global/apollo:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,apollo_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-09-01,M2007J3SG"
"Xiaomi,Mi 10T pro,apollo,12,xiaomi/apollo_global/apollo:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,apollo_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-09-01,M2007J3SI"
"Xiaomi,Mi 10i,gauguininpro,12,xiaomi/gauguininpro_global/gauguininpro:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,gauguininpro_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-01-01,M2007J17I"
"Xiaomi,Mi 11,venus,12,xiaomi/venus_global/venus:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,venus_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-12-01,M2011K2C"
"Xiaomi,Mi 11,venus,12,xiaomi/venus_global/venus:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,venus_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2020-12-01,M2011K2G"
"Xiaomi,Mi 11 LE,lisa,12,xiaomi/lisa_global/lisa:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,lisa_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-07-01,2107119DC"
"Xiaomi,Mi 11 Lite,courbet,12,xiaomi/courbet_global/courbet:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,courbet_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2101K9AG"
"Xiaomi,Mi 11 Lite,courbetin,12,xiaomi/courbetin_global/courbetin:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,courbetin_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2101K9AI"
"Xiaomi,Mi 11 Lite 5G,renoir,12,xiaomi/renoir_global/renoir:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,renoir_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2101K9C"
"Xiaomi,Mi 11 Lite 5G,renoir,12,xiaomi/renoir_global/renoir:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,renoir_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2101K9G"
"Xiaomi,Mi 11X Pro,haydnin,12,xiaomi/haydnin_global/haydnin:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,haydnin_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-03-01,M2012K11I"
"Xiaomi,Mi 11i,haydn,12,xiaomi/haydn_global/haydn:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,haydn_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-12-01,M2012K11G"
"Xiaomi,Xiaomi 11 Lite 5G NE,lisa,12,xiaomi/lisa_global/lisa:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,lisa_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-09-01,2109119DG"
"Xiaomi,Xiaomi 11 Lite NE,lisa,12,xiaomi/lisa_global/lisa:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,lisa_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-09-01,2109119DI"
"Xiaomi,Xiaomi 11T,amber,12,xiaomi/amber_global/amber:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,amber_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-08-01,21081111RG"
"Xiaomi,Xiaomi 11T Pro,vili,12,xiaomi/vili_global/vili:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,vili_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-07-01,2107113SG"
"Xiaomi,Xiaomi 11T Pro,vili,12,xiaomi/vili_global/vili:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,vili_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-07-01,2107113SI"
"Xiaomi,Xiaomi 11T Pro,vili,12,xiaomi/vili_global/vili:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,vili_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-07-01,2107113SR"
"Xiaomi,Xiaomi 12,cupid,12,xiaomi/cupid_global/cupid:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,cupid_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201123C"
"Xiaomi,Xiaomi 12,cupid,12,xiaomi/cupid_global/cupid:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,cupid_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201123G"
"Xiaomi,Xiaomi 12 Lite,taoyao,12,xiaomi/taoyao_global/taoyao:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,taoyao_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-03-01,2203129G"
"Xiaomi,Xiaomi 12 Pro,zeus,12,xiaomi/zeus_global/zeus:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,zeus_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201122C"
"Xiaomi,Xiaomi 12 Pro,zeus,12,xiaomi/zeus_global/zeus:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,zeus_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-01-01,2201122G"
"Xiaomi,Xiaomi 12 Pro Dimensity,daumier,12,xiaomi/daumier_global/daumier:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,daumier_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-07-01,2207122MC"
"Xiaomi,Xiaomi 12S,mayfly,12,xiaomi/mayfly_global/mayfly:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,mayfly_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-06-01,2206123SC"
"Xiaomi,Xiaomi 12S Pro,unicorn,12,xiaomi/unicorn_global/unicorn:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,unicorn_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-06-01,2206122SC"
"Xiaomi,Xiaomi 12S Ultra,thor,12,xiaomi/thor_global/thor:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,thor_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-03-01,2203121C"
"Xiaomi,Xiaomi 12T,plato,12,xiaomi/plato_global/plato:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,plato_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-07-01,22071212AG"
"Xiaomi,Xiaomi 12T Pro,diting,12,xiaomi/diting_global/diting:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,diting_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-08-01,22081212C"
"Xiaomi,Xiaomi 12T Pro,diting,12,xiaomi/diting_global/diting:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,diting_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-08-01,22081212R"
"Xiaomi,Xiaomi 12T Pro,diting,12,xiaomi/diting_global/diting:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,diting_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-08-01,22081212UG"
"Xiaomi,Xiaomi 12T Pro,diting,12,xiaomi/diting_global/diting:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,diting_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,22200414R"
"Xiaomi,Xiaomi 12T Pro,diting,12,xiaomi/diting_global/diting:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,diting_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-10-01,A201XM"
"Xiaomi,Xiaomi 12X,psyche,12,xiaomi/psyche_global/psyche:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,psyche_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-12-01,2112123AC"
"Xiaomi,Xiaomi 13,fuxi,13,xiaomi/fuxi_global/fuxi:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,fuxi_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2022-11-01,2211133C"
"Xiaomi,Xiaomi 13,fuxi,13,xiaomi/fuxi_global/fuxi:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,fuxi_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2022-11-01,2211133G"
"Xiaomi,Xiaomi 13 Lite,ziyi,13,xiaomi/ziyi_global/ziyi:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,ziyi_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2022-10-01,2210129SG"
"Xiaomi,Xiaomi 13 Pro,nuwa,13,xiaomi/nuwa_global/nuwa:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,nuwa_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2022-10-01,2210132G"
"Xiaomi,Xiaomi 13 pro,nuwa,13,xiaomi/nuwa_global/nuwa:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,nuwa_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2022-10-01,2210132C"
"Xiaomi,Xiaomi 13T,XIG04,13,xiaomi/XIG04_global/XIG04:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,XIG04_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2023-09-01,XIG04"
"Xiaomi,Xiaomi 13T Pro,corot,13,xiaomi/corot_global/corot:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,corot_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2023-07-01,23078PND5G"
"Xiaomi,Xiaomi 13T Pro,corot,13,xiaomi/corot_global/corot:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,corot_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2023-08-01,23088PND5R"
"Xiaomi,Xiaomi 13T Pro,corot,13,xiaomi/corot_global/corot:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,corot_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2023-01-01,A301XM"
"Xiaomi,Xiaomi 14,houji,14,xiaomi/houji_global/houji:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,houji_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2023-12-01,23127PN0CC"
"Xiaomi,Xiaomi 14,houji,14,xiaomi/houji_global/houji:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,houji_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2023-12-01,23127PN0CG"
"Xiaomi,Xiaomi 14 Pro,shennong,14,xiaomi/shennong_global/shennong:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,shennong_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2023-11-01,23116PN5BC"
"Xiaomi,Xiaomi 14 Pro,shennong,14,xiaomi/shennong_global/shennong:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,shennong_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2023-11-01,2311BPN23C"
"Xiaomi,Xiaomi 14 Ultra,aurora,14,xiaomi/aurora_global/aurora:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,aurora_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-03-01,24030PN60G"
"Xiaomi,Xiaomi 14 Ultra,aurora,14,xiaomi/aurora_global/aurora:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,aurora_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-03-01,24031PN0DC"
"Xiaomi,Xiaomi 14T,XIG07,14,xiaomi/XIG07_global/XIG07:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,XIG07_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-06-01,XIG07"
"Xiaomi,Xiaomi 14T,degas,14,xiaomi/degas_global/degas:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,degas_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-06-01,2406APNFAG"
"Xiaomi,Xiaomi 14T Pro,rothko,14,xiaomi/rothko_global/rothko:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,rothko_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-07-01,2407FPN8EG"
"Xiaomi,Xiaomi 14T Pro,rothko,14,xiaomi/rothko_global/rothko:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,rothko_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-07-01,2407FPN8ER"
"Xiaomi,Xiaomi 14T Pro,rothko,14,xiaomi/rothko_global/rothko:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,rothko_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-04-01,A402XM"
"Xiaomi,Xiaomi 15,dada,15,xiaomi/dada_global/dada:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,dada_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2024-12-01,24129PN74C"
"Xiaomi,Xiaomi 15,dada,15,xiaomi/dada_global/dada:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,dada_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2024-12-01,24129PN74G"
"Xiaomi,Xiaomi 15,dada,15,xiaomi/dada_global/dada:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,dada_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2024-12-01,24129PN74I"
"Xiaomi,Xiaomi 15 Pro,haotian,15,xiaomi/haotian_global/haotian:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,haotian_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2024-10-01,2410DPN6CC"
"Xiaomi,Xiaomi 15 Ultra,xuanyuan,15,xiaomi/xuanyuan_global/xuanyuan:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,xuanyuan_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2025-01-01,25010PN30C"
"Xiaomi,Xiaomi 15 Ultra,xuanyuan,15,xiaomi/xuanyuan_global/xuanyuan:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,xuanyuan_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2025-01-01,25010PN30G"
"Xiaomi,Xiaomi 15 Ultra,xuanyuan,15,xiaomi/xuanyuan_global/xuanyuan:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,xuanyuan_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2025-01-01,25010PN30I"
"Xiaomi,Xiaomi 15 Ultra,xuanyuan,15,xiaomi/xuanyuan_global/xuanyuan:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,xuanyuan_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2025-01-01,25019PNF3C"
"Xiaomi,Xiaomi 15S Pro,dijun,15,xiaomi/dijun_global/dijun:15/RKQ1.200826.002/V16.0.1.0.RJOMIXM:user/release-keys,dijun_global,RKQ1.200826.002,V16.0.1.0.RJOMIXM,2025-04-01,25042PN24C"
"Xiaomi,Xiaomi MIX Flip,ruyi,14,xiaomi/ruyi_global/ruyi:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,ruyi_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-05-01,2405CPX3DC"
"Xiaomi,Xiaomi MIX Flip,ruyi,14,xiaomi/ruyi_global/ruyi:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,ruyi_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-05-01,2405CPX3DG"
"Xiaomi,Xiaomi MIX Fold,cetus,12,xiaomi/cetus_global/cetus:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,cetus_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2021-01-01,M2011J18C"
"Xiaomi,Xiaomi MIX Fold 2,zizhan,12,xiaomi/zizhan_global/zizhan:12/RKQ1.200826.002/V13.0.1.0.RJOMIXM:user/release-keys,zizhan_global,RKQ1.200826.002,V13.0.1.0.RJOMIXM,2022-06-01,22061218C"
"Xiaomi,Xiaomi MIX Fold 3,babylon,13,xiaomi/babylon_global/babylon:13/RKQ1.200826.002/V14.0.1.0.RJOMIXM:user/release-keys,babylon_global,RKQ1.200826.002,V14.0.1.0.RJOMIXM,2023-08-01,2308CPXD0C"
"Xiaomi,Xiaomi MIX Fold 4,goku,14,xiaomi/goku_global/goku:14/RKQ1.200826.002/V15.0.1.0.RJOMIXM:user/release-keys,goku_global,RKQ1.200826.002,V15.0.1.0.RJOMIXM,2024-07-01,24072PX77C"
"POCO,POCO C3,angelicain,12,xiaomi/angelicain/angelicain:12/SP1A.210812.016/V13.0.1.0.QCRINXM:user/release-keys,angelicain,SP1A.210812.016,V13.0.1.0.QCRINXM,2022-08-01,M2006C3MI"
"POCO,POCO C31,angelicain,12,xiaomi/angelicain/angelicain:12/SP1A.210812.016/V13.0.3.0.QCRINXM:user/release-keys,angelicain,SP1A.210812.016,V13.0.3.0.QCRINXM,2023-01-01,211033MI"
"POCO,POCO C50,snow,13,xiaomi/snow/snow:13/TP1A.220624.014/V14.0.1.0.TGPCINXM:user/release-keys,snow,TP1A.220624.014,V14.0.1.0.TGPCINXM,2024-01-01,220733SPI"
"POCO,POCO C51,water,13,xiaomi/water/water:13/TP1A.220624.014/V14.0.2.0.TGPEUXM:user/release-keys,water,TP1A.220624.014,V14.0.2.0.TGPEUXM,2024-03-01,2302EPCC4H"
"POCO,POCO C61,blue,14,xiaomi/blue/blue:14/UP1A.231005.007/V15.0.1.0.UNPCINXM:user/release-keys,blue,UP1A.231005.007,V15.0.1.0.UNPCINXM,2025-01-01,2312BPC51H"
"POCO,POCO C65,gale,14,xiaomi/gale/gale:14/UP1A.231005.007/V15.0.4.0.UNPMIXM:user/release-keys,gale,UP1A.231005.007,V15.0.4.0.UNPMIXM,2025-02-01,2310FPCA4I"
"POCO,POCO C75,lake,14,xiaomi/lake/lake:14/UP1A.231005.007/V15.0.2.0.UNPINXM:user/release-keys,lake,UP1A.231005.007,V15.0.2.0.UNPINXM,2025-03-01,2410FPCC5G"
"POCO,POCO F2 Pro,lmi,13,xiaomi/lmi/lmi:13/TP1A.220624.014/V14.0.1.0.TJKMIXM:user/release-keys,lmi,TP1A.220624.014,V14.0.1.0.TJKMIXM,2024-01-01,POCO F2 Pro"
"POCO,POCO F3,alioth,13,xiaomi/alioth/alioth:13/TP1A.220624.014/V14.0.4.0.TKHMIXM:user/release-keys,alioth,TP1A.220624.014,V14.0.4.0.TKHMIXM,2024-02-01,M2012K11AG"
"POCO,POCO F4,munch,13,xiaomi/munch/munch:13/TP1A.220624.014/V14.0.2.0.TLMMIXM:user/release-keys,munch,TP1A.220624.014,V14.0.2.0.TLMMIXM,2024-02-01,22021211RG"
"POCO,POCO F4 GT,ingres,14,xiaomi/ingres/ingres:14/UP1A.231005.007/V15.0.2.0.UNKMIXM:user/release-keys,ingres,UP1A.231005.007,V15.0.2.0.UNKMIXM,2025-02-01,21121210G"
"POCO,POCO F6,peridot,14,xiaomi/peridot/peridot:14/UP1A.231005.007/V15.0.3.0.UNMCNXM:user/release-keys,peridot,UP1A.231005.007,V15.0.3.0.UNMCNXM,2025-03-01,24069PC21G"
"POCO,POCO F6 Pro,vermeer,14,xiaomi/vermeer/vermeer:14/UP1A.231005.007/V15.0.2.0.UNMCNXM:user/release-keys,vermeer,UP1A.231005.007,V15.0.2.0.UNMCNXM,2025-03-01,23113RKC6G"
"POCO,POCO M2,shiva,12,xiaomi/shiva/shiva:12/SP1A.210812.016/V13.0.5.0.QJRINXM:user/release-keys,shiva,SP1A.210812.016,V13.0.5.0.QJRINXM,2023-03-01,M2004J19PI"
"POCO,POCO M3,citrus,13,xiaomi/citrus/citrus:13/TP1A.220624.014/V14.0.1.0.TJFMIXM:user/release-keys,citrus,TP1A.220624.014,V14.0.1.0.TJFMIXM,2024-02-01,M2010J19CG"
"POCO,POCO M3 Pro 5G,camellia,13,xiaomi/camellia/camellia:13/TP1A.220624.014/V14.0.3.0.TKSMIXM:user/release-keys,camellia,TP1A.220624.014,V14.0.3.0.TKSMIXM,2024-03-01,M2103K19PI"
"POCO,POCO M4 5G,light,13,xiaomi/light/light:13/TP1A.220624.014/V14.0.1.0.TLSMIXM:user/release-keys,light,TP1A.220624.014,V14.0.1.0.TLSMIXM,2024-01-01,22041219PI"
"POCO,POCO M4 Pro 5G,evergreen,13,xiaomi/evergreen/evergreen:13/TP1A.220624.014/V14.0.4.0.TGBMIXM:user/release-keys,evergreen,TP1A.220624.014,V14.0.4.0.TGBMIXM,2024-02-01,21091116AG"
"POCO,POCO M5,stone,13,xiaomi/stone/stone:13/TP1A.220624.014/V14.0.3.0.TLUMIXM:user/release-keys,stone,TP1A.220624.014,V14.0.3.0.TLUMIXM,2024-01-01,22071219CG"
"POCO,POCO M6 Pro 5G,sky,14,xiaomi/sky/sky:14/UP1A.231005.007/V15.0.3.0.UNPMIXM:user/release-keys,sky,UP1A.231005.007,V15.0.3.0.UNPMIXM,2025-03-01,23076PC4BI"
"POCO,POCO X3 NFC,surya,13,xiaomi/surya/surya:13/TP1A.220624.014/V14.0.3.0.TJGMIXM:user/release-keys,surya,TP1A.220624.014,V14.0.3.0.TJGMIXM,2024-02-01,M2007J20CG"
"POCO,POCO X3 Pro,vayu,13,xiaomi/vayu/vayu:13/TP1A.220624.014/V14.0.2.0.TJUMIXM:user/release-keys,vayu,TP1A.220624.014,V14.0.2.0.TJUMIXM,2024-01-01,M2102J20SG"
"POCO,POCO X4 Pro 5G,peux,13,xiaomi/peux/peux:13/TP1A.220624.014/V14.0.3.0.TKCMIXM:user/release-keys,peux,TP1A.220624.014,V14.0.3.0.TKCMIXM,2024-02-01,2201116PI"
"POCO,POCO X5 Pro 5G,redwood,14,xiaomi/redwood/redwood:14/UP1A.231005.007/V15.0.2.0.UNXMIXM:user/release-keys,redwood,UP1A.231005.007,V15.0.2.0.UNXMIXM,2025-02-01,22101320G"
"POCO,POCO X6 Pro 5G,duchamp,14,xiaomi/duchamp/duchamp:14/UP1A.231005.007/V15.0.1.0.UNSCNXM:user/release-keys,duchamp,UP1A.231005.007,V15.0.1.0.UNSCNXM,2025-03-01,2311DRK48G"
"POCO,POCO X7,malachite,14,xiaomi/malachite/malachite:14/UP1A.231005.007/V15.0.3.0.UNPINXM:user/release-keys,malachite,UP1A.231005.007,V15.0.3.0.UNPINXM,2025-03-01,24095PCADG"
"POCO,POCO X7 Pro,rodin,14,xiaomi/rodin/rodin:14/UP1A.231005.007/V15.0.2.0.UNXMIXM:user/release-keys,rodin,UP1A.231005.007,V15.0.2.0.UNXMIXM,2025-03-01,2412DPC0AG"
"POCO,POCO F7,onyx,14,xiaomi/onyx/onyx:14/UP1A.231005.007/V15.0.2.0.UNXMIXM:user/release-keys,onyx,UP1A.231005.007,V15.0.2.0.UNXMIXM,2025-03-01,25053PC47G"
"POCO,POCO F7 Pro,zorn,14,xiaomi/zorn/zorn:14/UP1A.231005.007/V15.0.1.0.UNXMIXM:user/release-keys,zorn,UP1A.231005.007,V15.0.1.0.UNXMIXM,2025-03-01,24117RK2CG"
"POCO,POCO F7 Ultra,miro,14,xiaomi/miro/miro:14/UP1A.231005.007/V15.0.1.0.UNXMIXM:user/release-keys,miro,UP1A.231005.007,V15.0.1.0.UNXMIXM,2025-03-01,24122RKC7G"
)

    # BUILD ID
    build_prefix=("CP1A" "BD1A" "BP1A" "AP2A" "AP1A" "TQ1A" "RKQ1" "RKQ2" "SP1A" "QP1A" "TD1A" "RQ1A" "RQ2A" "RQ3A" "SQ1A" "SQ2A" "SQ3A" "TP1A" "TP2A")
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
        "230901" "230902" "230903" "230904" "230905"
        "231001" "231002" "231003" "231004" "231005"
        "231101" "231102" "231103" "231104" "231105"
        "231215" "231216" "231217" "231218" "231219"
        
        # 2024
        "240101" "240102" "240103" "240104" "240105"
        "240201" "240202" "240203" "240204" "240205"
        "240315" "240316" "240317" "240318" "240319"
        "240401" "240402" "240403" "240404" "240405"
        "240515" "240516" "240517" "240518" "240519"
        "240601" "240602" "240603" "240604" "240605"
        "240701" "240702" "240703" "240704" "240705"
        "240826" "240827" "240828" "240829" "240830"
        "240901" "240902" "240903" "240904" "240905"
        "241001" "241002" "241003" "241004" "241005"
        "241101" "241102" "241103" "241104" "241105"
        "241215" "241216" "241217" "241218" "241219"
		
		# 2025
        "250101" "250102" "250103" "250104" "250105"
        "250201" "250202" "250203" "250204" "250205"
        "250315" "250316" "250317" "250318" "250319"
        "250401" "250402" "250403" "250404" "250405"
        "250515" "250516" "250517" "250518" "250519"
        "250601" "250602" "250603" "250604" "250605"
        "250701" "250702" "250703" "250704" "250705"
        "250826" "250827" "250828" "250829" "250830"
        "250901" "250902" "250903" "250904" "250905"
        "251001" "251002" "251003" "251004" "251005"
        "251101" "251102" "251103" "251104" "251105"
        "251215" "251216" "251217" "251218" "251219"
		
		# 2026
        "260101" "260102" "260103" "260104" "260105"
        "260201" "260202" "260203" "260204" "260205"
        "260315" "260316" "260317" "260318" "260319"
        "260401" "260402" "260403" "260404" "260405"
        "260515" "260516" "260517" "260518" "260519"
        "260601" "260602" "260603" "260604" "260605"
        "260701" "260702" "260703" "260704" "260705"
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
    BRANDX=xiaomi
	BRAND=$(echo "$BRAND" | head -c 100)
    MODEL=$(echo "$MODEL" | head -c 100)
	MODEL_CODE=$MODEL_CODE
    DEVICE=$(echo "$DEVICE" | tr -d '[:space:]' | head -c 20)
    VERSION_RELEASE=$((13 + RANDOM % 5))
    FINGERPRINT=$(echo "$FINGERPRINT" | head -c 100)
    PRODUCT_NAME=$(echo "$PRODUCT_NAME" | tr -d '[:space:]' | head -c 30)
    BUILD_ID=$build_random_prefix.$build_random_year.$build_random_build_num
    BUILD_IDD=$(echo "$BUILD_IDD" | head -c 100)
    VERSION_INCREMENTAL=$(echo "$VERSION_INCREMENTAL" | tr -d '[:space:]' | head -c 20)
    SECURITY_PATCH=$(echo "$SECURITY_PATCH" | tr -d '[:space:]')
	
	FP_KT=$BRANDX/$DEVICE/$PRODUCT_NAME:$VERSION_RELEASE/$BUILD_ID/$VERSION_INCREMENTAL:user/release-keys
    
    # Pastikan semua nilai memiliki nilai minimal
    [ -z "$BRAND" ] && BRAND="Unknown"
	[ -z "$BRANDX" ] && BRANDX="Unknown"
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
    echo -e "${C} Brand: $BRAND"
    sleep 0.3
	echo -e "${C} Manufactur: $BRAND"
    sleep 0.3
    echo -e "${C} Model: $MODEL_CODE"
    sleep 0.3
    echo -e "${C} Device: $DEVICE${N}"
    sleep 0.3
    echo -e "${C} Android: $VERSION_RELEASE"
    sleep 0.3
    echo -e "${C} Fingerprint: $FP_KT${N}"
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
    add_prop "ro.build.system_root_image" "false"
    add_prop "ro.opengles.version" "196610"
    add_prop "ro.kernel.qemu" "0"
    add_prop "ro.kernel.qemu.gles" "0"
    add_prop "init.svc.flash_recovery" "stopped"
    add_prop "init.svc.adbd" "stopped"
    add_prop "init.svc.usbd" "stopped"
    add_prop "ro.crypto.state" "encrypted"		
    add_prop "persist.log.tag.LSPosed" "S"
    add_prop "persist.log.tag.LSPosed-Bridge" "S"
    add_prop "ro.build.version.security_patch" "$SECURITY_PATCH"
    add_prop1 "#"
    # Properti dasar
    add_prop "ro.product.brand" "$BRAND"
    add_prop "ro.product.manufacturer" "$BRAND"
    add_prop "ro.product.name" "$PRODUCT_NAME"
    add_prop "ro.product.device" "$DEVICE"
    add_prop "ro.product.model" "$MODEL_CODE"
    add_prop "ro.product.board" "$BOARD"
    add_prop "ro.build.fingerprint" "$FP_KT"
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
    add_prop "ro.bootimage.build.fingerprint" "$FP_KT"
    add_prop1 "#"

    # Properti duplikat untuk konsistensi
    for prop_prefix in "system" "vendor" "product" "odm" "system_ext"; do
        add_prop "ro.product.${prop_prefix}.brand" "$BRAND"
        add_prop "ro.product.${prop_prefix}.manufacturer" "$BRAND"
        add_prop "ro.product.${prop_prefix}.name" "$PRODUCT_NAME"
        add_prop "ro.product.${prop_prefix}.device" "$DEVICE"
        add_prop "ro.product.${prop_prefix}.model" "$MODEL_CODE"
        add_prop "ro.product.${prop_prefix}.board" "$BOARD"
        add_prop "ro.build.product" "$DEVICE"
        add_prop "ro.product.build.id" "$BUILD_ID"
        add_prop "ro.com.google.clientidbase" "$DEVICE-google"
        add_prop "ro.${prop_prefix}.build.fingerprint" "$FP_KT"
        add_prop "ro.${prop_prefix}.build.version.release" "$VERSION_RELEASE"
        add_prop "ro.${prop_prefix}.build.id" "$BUILD_ID"
        add_prop "ro.${prop_prefix}.build.version.incremental" "$VERSION_INCREMENTAL"
        add_prop "ro.${prop_prefix}.build.date" "$BUILD_DATE_STR"
        add_prop "ro.${prop_prefix}.build.date.utc" "$UTC"
        add_prop "ro.product.locale" "id-ID" 
    done

add_prop11() {
        echo "$1=$2" >> "$PROPS_TMP_FILEZ"
    }
add_prop11S() {
        echo "$1=$2" >> "$PROPS_TMP_FILEZ"
    }    
    # Properti dasar
    add_prop11 "ro.product.brand" "$BRAND"
    add_prop11 "ro.product.manufacturer" "$BRAND"
    add_prop11 "ro.product.name" "$PRODUCT_NAME"
    add_prop11 "ro.product.device" "$DEVICE"
    add_prop11 "ro.product.model" "$MODEL_CODE"
    add_prop11 "ro.product.board" "$BOARD"
    add_prop11 "ro.build.fingerprint" "$FP_KT"
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
    add_prop11 "ro.bootimage.build.fingerprint" "$FP_KT"
    
    # Properti duplikat untuk konsistensi
    for prop_prefix in "system" "vendor" "product" "odm" "system_ext"; do
        add_prop11 "ro.product.${prop_prefix}.brand" "$BRAND"
        add_prop11 "ro.product.${prop_prefix}.manufacturer" "$BRAND"
        add_prop11 "ro.product.${prop_prefix}.name" "$PRODUCT_NAME"
        add_prop11 "ro.product.${prop_prefix}.device" "$DEVICE"
        add_prop11 "ro.product.${prop_prefix}.model" "$MODEL_CODE"
        add_prop11 "ro.product.${prop_prefix}.board" "$BOARD"
        add_prop11 "ro.build.product" "$DEVICE"
        add_prop11 "ro.product.build.id" "$BUILD_ID"
        add_prop11 "ro.com.google.clientidbase" "$DEVICE-google"
        add_prop11 "ro.${prop_prefix}.build.fingerprint" "$FP_KT"
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
        echo "# KTools 2026"
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
            su -c am start com.fufufu.katrina.backup/com.fufufu.katrina.backup.KatrinaActivity &>/dev/null
            su -c am force-stop bin.mt.plus
            su -c am force-stop os.tools.scriptmanager
            su -c am force-stop bin.mt.plus.canary
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
#patch_android_settings &>/dev/null
sleep 0.5 
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(83%)\r'
#post_spoof_cleanup &>/dev/null
sleep 0.5 
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(100%)\n'
            sleep 0.5     
            echo ""
            echo ""
            echo ""
            echo ""
            echo ""
            echo -e "${Y}🔥 SELESAI MEMBUAT system.prop $BRAND $MODEL !!${N}"
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
  send_telegram "✅ Serial $SERIAL terdaftar. Lanjut generate props __co__xiomi-reborn.sh... Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  proses
else
  send_telegram "⛔ Serial $SERIAL tidak terdaftar! Script __co__xiomi-reborn.sh dibatalkan. Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  bloked
  exit 1
fi