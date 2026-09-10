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
su -c "setenforce 0"  &>/dev/null

RESET(){
  echo "[!] Reset SSAID..."
  rm -r /data/system/users/0/settings_ssaid.xml >/dev/null 2>&1
  rm -rf /data/system/users/0/registered_services >/dev/null 2>&1
  rm -rf /data/system/usagestats/0 >/dev/null 2>&1
  rm -r /data/system_ce/0/accounts_ce.db >/dev/null 2>&1
  rm -r /data/system_de/0/accounts_de.db >/dev/null 2>&1
  rm -r /data/system_de/0/accounts_de.db-journal >/dev/null 2>&1
}

RESET >/dev/null 2>&1

wipe1() {
clear
banner
settings put global airplane_mode_on 1
am broadcast -a android.intent.action.AIRPLANE_MODE

# delete props
rm -rf /data/adb/modules/magisk-drm-disabler/system.prop
rm -rf /data/adb/modules/MagiskHidePropsConf/system.prop
rm -rf /data/adb/modules/MagiskHidePropsConf/post-fs-data.sh
rm -rf /data/adb/modules/KToolsHidePropsConf/system.prop
rm -rf /data/adb/modules/KToolsHidePropsConf/post-fs-data.sh
rm -rf /data/adb/modules/ktools_drm/system.prop

am force-stop com.whatsapp
am force-stop com.whatsapp.w4b
am force-stop com.ss.android.ugc.trill
am force-stop com.zhiliaoapp.musically
am force-stop com.tokopedia.tkpd
am force-stop com.lazada.android
am force-stop jp.naver.line.android
am force-stop com.facebook.katana
am force-stop com.microsoft.office.outlook
am force-stop free.vpn.secure.turbo.proxy.hotspot.vpnindonesia
am force-stop com.shopee.id
am force-stop com.google.android.inputmethod.latin

pm clear com.whatsapp
pm clear com.whatsapp.w4b
pm clear com.lazada.android
pm clear com.ss.android.ugc.trill
pm clear com.zhiliaoapp.musically
pm clear com.tokopedia.tkpd
pm clear jp.naver.line.android
pm clear com.facebook.katana
pm clear com.microsoft.office.outlook
pm clear free.vpn.secure.turbo.proxy.hotspot.vpnindonesia
pm clear com.shopee.id
pm clear com.google.android.inputmethod.latin

#close
am force-stop com.microsoft.office.outlook
am force-stop org.chromium.chrome.stable
am force-stop jp.naver.line.android
am force-stop verde.vpn.android
am force-stop net.upx.proxy.browser
am force-stop com.lemurbrowser.exts
am force-stop com.kiwibrowser.browser
am force-stop mark.via.gp
am force-stop org.bromite.bromite
am force-stop mobi.mgeek.TunnyBrowser
am force-stop com.lazada.android
am force-stop com.google.android.apps.restore
am force-stop com.google.android.carriersetup
am force-stop com.google.android.configupdater
am force-stop com.google.android.ext.services
am force-stop com.google.android.ext.shared
am force-stop com.google.android.feedback
am force-stop com.google.android.gms
am force-stop com.google.android.gsf
am force-stop com.google.android.onetimeinitializer
am force-stop com.google.android.partnersetup
am force-stop com.google.android.projection.gearhead
am force-stop com.google.android.setupwizard
am force-stop com.google.android.syncadapters.calendar
am force-stop com.google.android.syncadapters.contacts
am force-stop com.google.android.tts
am force-stop com.android.vending
am force-stop com.android.webview
am force-stop com.android.wifi.resources
am force-stop com.android.wifi.resources.xiaomi_sdm660
am force-stop com.facebook.katana
am force-stop com.android.chrome
am force-stop com.facebook.orca
#am force-stop air.kukulive.mailnow
am force-stop com.ss.android.ugc.trill
am force-stop com.tokopedia.tkpd
am force-stop com.jrzheng.supervpnfree
am force-stop net.upx.proxy.browser
am force-stop free.vpn.secure.turbo.proxy.hotspot.vpnindonesia
am force-stop com.opera.max.global
   
#bersihkan
pm clear com.microsoft.office.outlook
pm clear org.chromium.chrome.stable
pm clear jp.naver.line.android
pm clear verde.vpn.android
pm clear net.upx.proxy.browser
pm clear com.lemurbrowser.exts
pm clear com.kiwibrowser.browser
pm clear mark.via.gp
pm clear org.bromite.bromite
pm clear mobi.mgeek.TunnyBrowser
pm clear com.lazada.android
pm clear com.google.android.apps.restore
pm clear com.google.android.carriersetup
pm clear com.google.android.configupdater
pm clear com.google.android.ext.services
pm clear com.google.android.ext.shared
pm clear com.google.android.feedback
pm clear com.google.android.gms
pm clear com.google.android.gsf
pm clear com.google.android.partnersetup
pm clear com.google.android.projection.gearhead
pm clear com.google.android.setupwizard
pm clear com.google.android.syncadapters.calendar
pm clear com.google.android.syncadapters.contacts
pm clear com.google.android.tts
pm clear com.android.vending
pm clear com.android.webview
pm clear com.android.wifi.resources
pm clear com.android.wifi.resources.xiaomi_sdm660
pm clear com.facebook.katana
pm clear com.android.chrome
pm clear com.facebook.orca
#pm clear air.kukulive.mailnow
pm clear com.ss.android.ugc.trill
pm clear com.tokopedia.tkpd
pm clear com.jrzheng.supervpnfree
pm clear net.upx.proxy.browser
pm clear free.vpn.secure.turbo.proxy.hotspot.vpnindonesia
pm clear com.opera.max.global


#menghapus folder dan isinya

rm -rf /data/system/ifw/com.lazada.android.xml
rm -rf /data/system/ifw/id.dana.xml
rm -rf /data/system/ifw/com.ss.android.ugc.trill.xml
rm -rf /data/system/ifw/com.zhiliaoapp.musically.xml
rm -rf /data/system/ifw/com.shopee.id.xml

rm -rf /data/system/users/userlist.xml
rm -rf /data/system/users/0/registered_services
rm -rf /data/system/users/0/settings_ssaid.xml.fallback
rm -rf /data/system/users/0/settings_ssaid.xml
rm -rf /data/system/users/0/fpdata

rm -rf /data/system/graphicsstats/*
rm -rf /data/system/package_cache/*


rm -rf /data/dalvik-cache/
rm -rf /data/cache/
rm -rf "/data/user_de/0/com.android.location.fused/*"
rm -rf "/data/data/com.android.location.fused/*"
rm -rf "/data/dalvik-cache/*"
rm -rf "/cache/**"
rm -rf /storage/emulated/0/Android
rm -rf /storage/emulated/0/LOST.DIR/* 
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

rm -rf /storage/emulated/0/android/*
rm -rf /storage/emulated/0/android/data/*
rm -rf /storage/emulated/0/android/media/*
rm -rf /storage/emulated/0/android/obb/*

rm -rf /storage/self/primary/android/*
rm -rf /storage/self/primary/android/data/*
rm -rf /storage/self/primary/android/media/*
rm -rf /storage/self/primary/android/obb/*
}
timepick() {
            echo ""
            echo -e "${Y}Timepick sedang berjalan....${N}"
            echo ""
            
            rm -rf /storage/emulated/0/.* 
            rm -rf /storage/emulated/0/Android/.* 
            rm -rf /storage/emulated/0/Android/data/.* 
            rm -rf /storage/emulated/0/Tokopedia 
            rm -rf /storage/emulated/0/Music  
            rm -rf /storage/emulated/0/Download
            rm -rf /storage/emulated/0/Pictures
            rm -rf /storage/emulated/0/Movies  
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
            rm -rf /storage/emulated/0/Android 
            rm -f /storage/emulated/0/.cri 
            rm -rf /storage/emulated/0/LOST.DIR/* 
            rm -rf /storage/emulated/0/cache/*.* 
            rm -rf /cache/*.apk 
            rm -rf /cache/*.tmp 
            rm -rf /data/*.log 
            rm -rf /data/anr/* 
            rm -rf /data/backup/pending/*.tmp 
            rm -rf /data/cache/*.* 
            rm -rf /data/clipboard/* 
            rm -rf /data/dalvik-cache/*.apk 
            rm -rf /data/dalvik-cache/*.tmp 
            rm -rf /data/dontpanic/*.tmp 
            rm -rf /data/kernelpanics/*.tmp 
            rm -rf /data/last_alog 
            rm -rf /data/last_kmsg 
            rm -rf /data/local/tmp/* 
            rm -rf /data/log/* 
            rm -rf /data/mlog/* 
            rm -rf /data/system/dropbox/* 
            rm -rf /data/system/usagestats/* 
            rm -rf /data/tombstones/* 
            rm -rf /data/*.log 
            rm -rf /data/log/* 
            find /storage/emulated/0/ -type d -empty -print -delete 
            echo ""
            echo -e "${Y}Timepick Clean${N}"
            echo -e "${G}√${N} Folder Android dihapus"
            echo -e "${G}√${N} Sampah dihapus"
            echo -e "${G}√${N} Cache dihapus"
            echo -e "${G}√${N} .cri alfagift dihapus"
            echo -e "${G}√${N} dan lain lain"
            echo ""
            echo -e "${G}SELESAI${N}"
            
            }
            
gmsgsf()   {
            echo ""
            echo -e "${Y}Wipe GMS/SF sedang berjalan...${N}"
            echo ""
            
            if [ ! -d /data/data/com.google.android.gms ]; then 
            echo -e "${R}TIDAK TERINSTALL GAPPS${N}"
            else
            pm clear com.google.android.gms
            pm clear com.google.android.gsf
            pm clear com.android.webview
            pm clear com.android.chrome
            fi
            echo -e ""
            echo -e "${G}SELESAI${N}"
            
            }
            
GAPPS()    {
            if [ ! -d /data/data/com.google.android.gms ]; then 
            echo -e " ${G}02${N}. Wipe Data GMS/SF ${R}(Gapps Off)${N}"
            else
            echo -e " ${G}02${N}. Wipe Data GMS/SF ${G}(Gapps On)${G}"
            fi
            }
            
randomid() {
            echo "️"
            echo -e "${Y}️Acak SSAID sedang berjalan${N}"
            echo "️"
            
            rm -rf /data/system/users/0/fpdata
            rm -rf /data/system/users/0/registered_services
            rm /data/system/users/0/settings_ssaid.xml
            rm /data/system/users/0/settings_ssaid.xml.fallback
            echo ""
            echo -e "${Y}SELESAI${N}"
            
            }
            
doall()    {
            echo ""
            echo -e "${Y}Timepick sedang berjalan....${N}"
            echo ""
            
            rm -rf /storage/emulated/0/.* 
            rm -rf /storage/emulated/0/Android/.* 
            rm -rf /storage/emulated/0/Android/data/.* 
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
            rm -rf /storage/emulated/0/Android 
            rm -f /storage/emulated/0/.cri 
            rm -rf /storage/emulated/0/LOST.DIR/* 
            rm -rf /storage/emulated/0/cache/*.* 
            rm -rf /cache/*.apk 
            rm -rf /cache/*.tmp 
            rm -rf /data/*.log 
            rm -rf /data/anr/* 
            rm -rf /data/backup/pending/*.tmp 
            rm -rf /data/cache/*.* 
            rm -rf /data/clipboard/* 
            rm -rf /data/dalvik-cache/*.apk 
            rm -rf /data/dalvik-cache/*.tmp 
            rm -rf /data/dontpanic/*.tmp 
            rm -rf /data/kernelpanics/*.tmp 
            rm -rf /data/last_alog 
            rm -rf /data/last_kmsg 
            rm -rf /data/local/tmp/* 
            rm -rf /data/log/* 
            rm -rf /data/mlog/* 
            rm -rf /data/system/dropbox/* 
            rm -rf /data/system/usagestats/* 
            rm -rf /data/tombstones/* 
            rm -rf /data/*.log 
            rm -rf /data/log/* 
            find /storage/emulated/0/ -type d -empty -print -delete 
            echo ""
            echo -e "${Y}Timepick Clean${N}"
            echo -e "${G}√${N} Folder Android dihapus"
            echo -e "${G}√${N} Sampah dihapus"
            echo -e "${G}√${N} Cache dihapus"
            echo -e "${G}√${N} .cri alfagift dihapus"
            echo -e "${G}√${N} dan lain lain"
            echo ""
            echo -e "${G}SELESAI${N}"
            
            echo ""
            echo -e "${Y}Wipe GMS/SF sedang berjalan...${N}"
            echo ""
            
            if [ ! -d /data/data/com.google.android.gms ]; then 
            echo -e "${R}TIDAK TERINSTALL GAPPS${N}"
            else
            pm clear com.google.android.gms
            pm clear com.google.android.gsf
            pm clear com.android.webview
            pm clear com.android.chrome
            fi
            echo -e ""
            echo -e "${G}SELESAI${N}"
            
            echo "️"
            echo -e "${Y}️Acak SSAID sedang berjalan${N}"
            echo "️"
            
            rm -rf /data/system/users/0/fpdata
            rm -rf /data/system/users/0/registered_services
            rm /data/system/users/0/settings_ssaid.xml
            rm /data/system/users/0/settings_ssaid.xml.fallback
            echo ""
            echo -e "${Y}SELESAI${N}"
            
            echo ""
            echo "Perangkat akan restart dalam 2 detik"
            
            reboot
            }

            
doallnoreboot()    {
            echo ""
            echo -e "${Y}Timepick sedang berjalan....${N}"
            echo ""
            
            rm -rf /storage/emulated/0/.* 
            rm -rf /storage/emulated/0/Android/.* 
            rm -rf /storage/emulated/0/Android/data/.* 
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
            rm -rf /storage/emulated/0/Android 
            rm -f /storage/emulated/0/.cri 
            rm -rf /storage/emulated/0/LOST.DIR/* 
            rm -rf /storage/emulated/0/cache/*.* 
            rm -rf /cache/*.apk 
            rm -rf /cache/*.tmp 
            rm -rf /data/*.log 
            rm -rf /data/anr/* 
            rm -rf /data/backup/pending/*.tmp 
            rm -rf /data/cache/*.* 
            rm -rf /data/clipboard/* 
            rm -rf /data/dalvik-cache/*.apk 
            rm -rf /data/dalvik-cache/*.tmp 
            rm -rf /data/dontpanic/*.tmp 
            rm -rf /data/kernelpanics/*.tmp 
            rm -rf /data/last_alog 
            rm -rf /data/last_kmsg 
            rm -rf /data/local/tmp/* 
            rm -rf /data/log/* 
            rm -rf /data/mlog/* 
            rm -rf /data/system/dropbox/* 
            rm -rf /data/system/usagestats/* 
            rm -rf /data/tombstones/* 
            rm -rf /data/*.log 
            rm -rf /data/log/* 
            find /storage/emulated/0/ -type d -empty -print -delete 
            echo ""
            echo -e "${Y}Timepick Clean${N}"
            echo -e "${G}√${N} Folder Android dihapus"
            echo -e "${G}√${N} Sampah dihapus"
            echo -e "${G}√${N} Cache dihapus"
            echo -e "${G}√${N} .cri alfagift dihapus"
            echo -e "${G}√${N} dan lain lain"
            echo ""
            echo -e "${G}SELESAI${N}"
            
            echo ""
            echo -e "${Y}Wipe GMS/SF sedang berjalan...${N}"
            echo ""
            
            if [ ! -d /data/data/com.google.android.gms ]; then 
            echo -e "${R}TIDAK TERINSTALL GAPPS${N}"
            else
            pm clear com.google.android.gms
            pm clear com.google.android.gsf
            pm clear com.android.webview
            pm clear com.android.chrome
            fi
            echo -e ""
            echo -e "${G}SELESAI${N}"
            
            echo "️"
            echo -e "${Y}️Acak SSAID sedang berjalan${N}"
            echo "️"
            
            rm -rf /data/system/users/0/fpdata
            rm -rf /data/system/users/0/registered_services
            rm /data/system/users/0/settings_ssaid.xml
            rm /data/system/users/0/settings_ssaid.xml.fallback
            echo ""
            echo -e "${Y}SELESAI${N}"
            
            }


exit_fn() {
	menu_header "${C}Bye bye.${N}"
	echo ""
	log_handler "Exiting... Bye bye.\n\n===================="
	exit 0
}

modpeson(){
settings put global airplane_mode_on 1
am broadcast -a android.intent.action.AIRPLANE_MODE
}

modpesoff(){
settings put global airplane_mode_off 0
am broadcast -a android.intent.action.AIRPLANE_MODE
}  

clear
banner
echo ""
echo ""
    echo "🌀${Y}===== PROSES WIPE DATA =====${N}🌀"
        echo -e "${Y}© ${Y}"
        echo -e "${G} \ ${G}"
		echo -e "${G}  \ ___________/__${G}""${RGB} BERSIHKAN DATA & CACHE !!${RGB}"
            echo ""
            echo ""
            echo ""		
mount -o rw,remount / 2>/dev/null || true
modpeson  &>/dev/null
wipe1 &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇${N}" '(11%)\r'
timepick &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(37%)\r'
gmsgsf &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(64%)\r'
GAPPS &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(83%)\r'
randomid &>/dev/null
doallnoreboot &>/dev/null
echo -ne "${G}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇${N}" '(100%)\n'
settings put global airplane_mode_on 0 &>/dev/null
am broadcast -a android.intent.action.AIRPLANE_MODE &>/dev/null
            sleep 0.5     
            echo ""
            echo ""
            echo ""
            echo ""
            echo ""
            echo -e "${Y}🔥 PROSES WIPE DATA & CACHE SELESAI !!${N}"
            sleep 0.5
            echo -e "${G}✅${N} Folder Android dihapus"
            sleep 0.5
            echo -e "${G}✅${N} Sampah dihapus"
            sleep 0.5
            echo -e "${G}✅${N} Cache dihapus"
            sleep 3
            rm -rf /data/local/tmp/*
            mount -o ro,remount / 2>/dev/null || true
            am force-stop bin.mt.plus
            am force-stop os.tools.scriptmanager
            am force-stop bin.mt.plus.canary