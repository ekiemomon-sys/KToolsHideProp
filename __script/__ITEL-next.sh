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
# ITEL
"Itel,A25,L5002,9,itel/L5002/L5002:9/PPR1.180610.011/20191230:user/release-keys,L5002,PPR1.180610.011,20191230,2019-12-30,L5002"

"Itel,A27,W5006,11,itel/W5006/W5006:11/RP1A.200720.011/20211015:user/release-keys,W5006,RP1A.200720.011,20211015,2021-10-15,W5006"

"Itel,A49,A661L,11,itel/A661L/A661L:11/RP1A.200720.011/20220512:user/release-keys,A661L,RP1A.200720.011,20220512,2022-05-12,A661L"

"Itel,A60,A662LM,12,itel/A662LM/A662LM:12/SP1A.210812.016/20230208:user/release-keys,A662LM,SP1A.210812.016,20230208,2023-02-08,A662LM"

"Itel,A60s,A662L,12,itel/A662L/A662L:12/SP1A.210812.016/20230714:user/release-keys,A662L,SP1A.210812.016,20230714,2023-07-14,A662L"

"Itel,A70,A665L,13,itel/A665L/A665L:13/TP1A.220905.001/20240111:user/release-keys,A665L,TP1A.220905.001,20240111,2024-01-11,A665L"

"Itel,P36,W6501,10,itel/W6501/W6501:10/QP1A.190711.020/20200820:user/release-keys,W6501,QP1A.190711.020,20200820,2020-08-20,W6501"

"Itel,P38,P661W,11,itel/P661W/P661W:11/RP1A.200720.011/20220319:user/release-keys,P661W,RP1A.200720.011,20220319,2022-03-19,P661W"

"Itel,P40,P683L,12,itel/P683L/P683L:12/SP1A.210812.016/20230422:user/release-keys,P683L,SP1A.210812.016,20230422,2023-04-22,P683L"

"Itel,P55,P681L,13,itel/P681L/P681L:13/TP1A.220905.001/20240126:user/release-keys,P681L,TP1A.220905.001,20240126,2024-01-26,P681L"

"Itel,S23,S681LN,13,itel/S681LN/S681LN:13/TP1A.220905.001/20230918:user/release-keys,S681LN,TP1A.220905.001,20230918,2023-09-18,S681LN"

"Itel,S24,S681LN,14,itel/S681LN/S681LN:14/UP1A.230620.001/20240405:user/release-keys,S681LN,UP1A.230620.001,20240405,2024-04-05,S681LN"
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
    BRANDX=itel
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
pre_spoof_cleanup &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(37%)\r'
generate_and_apply_props
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(64%)\r'
patch_android_settings &>/dev/null
sleep 0.5 
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(83%)\r'
post_spoof_cleanup &>/dev/null
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
            finish
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
  send_telegram "✅ Serial $SERIAL terdaftar. Lanjut generate props __ITEL-next.sh... Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  proses
else
  send_telegram "⛔ Serial $SERIAL tidak terdaftar! Script __ITEL-next.sh dibatalkan. Sumber : CEOS-R2 - 17 Agust 2026"
  #sleep 3
  bloked
  exit 1
fi