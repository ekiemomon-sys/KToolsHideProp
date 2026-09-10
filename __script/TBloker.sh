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

kt_host() {
mount -o rw,remount / 2>/dev/null || true
rm -rf /data/local/tmp/*
mkdir /data/local/tmp 2>/dev/null
dir=/data/local/tmp/hosts
dirhosts=/data/adb/modules/ktools_drm/system/etc/hosts


echo "# TikTok Fingerprinting DNS Blocklist By KTools" >> $dir
echo "# Description: Blocks TikTok fingerprinting/tracker that track your activity." >> $dir
echo "#" >> $dir
echo "0.0.0.0 p16-ad.byteoversea.com" >> $dir
echo "0.0.0.0 pc-mon-va.byteoversea.com" >> $dir
echo "1.0.0.1 rtlog.byteoversea.com" >> $dir
echo "0.0.0.0 sgali-mcs.byteoversea.com" >> $dir
echo "0.0.0.0 sgaws-mcs.byteoversea.com" >> $dir
echo "1.0.0.1 sgee-log.byteoversea.com" >> $dir
echo "0.0.0.0 sgee-mcs.byteoversea.com" >> $dir
echo "0.0.0.0 ug-sg.byteoversea.com" >> $dir
echo "0.0.0.0 v16-ad.byteoversea.com" >> $dir
echo "0.0.0.0 vaali-mcs.byteoversea.com" >> $dir
echo "0.0.0.0 vaali-mcs-useast1a.byteoversea.com" >> $dir
echo "0.0.0.0 vaali-mcs-useast2a.byteoversea.com" >> $dir
echo "0.0.0.0 web-mon-useast2a.byteoversea.com" >> $dir
echo "1.0.0.1 xlog.byteoversea.com" >> $dir
echo "1.0.0.1 xlog-o.byteoversea.com" >> $dir
echo "1.0.0.1 xlog-va.byteoversea.com" >> $dir
echo "1.0.0.1 xlog-va-useast2a.byteoversea.com" >> $dir
echo "0.0.0.0 tnc-boot.capcutapi.com" >> $dir
echo "0.0.0.0 tnc-sg.capcutapi.com" >> $dir
echo "0.0.0.0 tnc-va.capcutapi.com" >> $dir
echo "0.0.0.0 tnc-va-us-looki.capcutapi.com" >> $dir
echo "0.0.0.0 tnc16-normal-us-ttp.capcutapi.us" >> $dir
echo "0.0.0.0 sf16-telemetry-proxy-oci.tiktokcdn-us.com.edgesuite.net" >> $dir
echo "0.0.0.0 frontier.byteoversea.com" >> $dir
echo "0.0.0.0 gplog-sg.byteoversea.com" >> $dir
echo "0.0.0.0 gplog-va.byteoversea.com" >> $dir
echo "0.0.0.0 gplog-va-useast2a.byteoversea.com" >> $dir
echo "0.0.0.0 gpm-mon-sg.byteoversea.com" >> $dir
echo "0.0.0.0 gpm-mon-va.byteoversea.com" >> $dir
echo "0.0.0.0 gpm-mon-va-useast1a.byteoversea.com" >> $dir
echo "0.0.0.0 gpm-mon-va-useast2a.byteoversea.com" >> $dir
echo "0.0.0.0 log.byteoversea.com" >> $dir
echo "0.0.0.0 log-tiktok.byteoversea.net" >> $dir
echo "0.0.0.0 log15.byteoversea.com" >> $dir
echo "0.0.0.0 log16.byteoversea.com" >> $dir
echo "0.0.0.0 maliva-mcs.byteoversea.com" >> $dir
echo "0.0.0.0 maliva-mcs-useast2a.byteoversea.com" >> $dir
echo "0.0.0.0 mcs-tiktok.byteoversea.net" >> $dir
echo "0.0.0.0 mon.byteoversea.com" >> $dir
echo "0.0.0.0 mon-csj-maliva-ios.byteoversea.com" >> $dir
echo "0.0.0.0 mon-va.byteoversea.com" >> $dir
echo "0.0.0.0 mon-va-useast2a.byteoversea.com" >> $dir
echo "1.1.1.1 mssdk-sg.byteoversea.com" >> $dir
echo "1.1.1.1 mssdk-sg-bu.byteoversea.com" >> $dir
echo "1.1.1.1 mssdk-va.byteoversea.com" >> $dir
echo "1.1.1.1 mssdk-va-useast2a.byteoversea.com" >> $dir
echo "1.1.1.1 abtest-ch.snssdk.com" >> $dir
echo "1.1.1.1 analytics.snssdk.com" >> $dir
echo "1.0.0.1 applog.snssdk.com" >> $dir
echo "1.1.1.1 bds.snssdk.com" >> $dir
echo "1.0.0.1 extlog.snssdk.com" >> $dir
echo "1.1.1.1 haohuo.snssdk.com" >> $dir
echo "1.0.0.1 log.snssdk.com" >> $dir
echo "1.0.0.1 log-hl.snssdk.com" >> $dir
echo "1.0.0.1 log-lf.snssdk.com" >> $dir
echo "1.0.0.1 log-lq.snssdk.com" >> $dir
echo "1.0.0.1 logtrace.snssdk.com" >> $dir
echo "1.1.1.1 mcs.snssdk.com" >> $dir
echo "1.1.1.1 mercury-sdk.snssdk.com" >> $dir
echo "1.1.1.1 mon.snssdk.com" >> $dir
echo "1.1.1.1 mon-hl.snssdk.com" >> $dir
echo "1.1.1.1 mssdk.snssdk.com" >> $dir
echo "1.1.1.1 mssdk-bu.snssdk.com" >> $dir
echo "1.1.1.1 open.snssdk.com" >> $dir
echo "1.1.1.1 os-mon.snssdk.com" >> $dir
echo "1.1.1.1 pangolin.snssdk.com" >> $dir
echo "1.1.1.1 pc-mon.snssdk.com" >> $dir
echo "1.1.1.1 sdfp.snssdk.com" >> $dir
echo "1.1.1.1 tbm.snssdk.com" >> $dir
echo "1.1.1.1 temai.snssdk.com" >> $dir
echo "1.1.1.1 tnc3-aliec2.snssdk.com" >> $dir
echo "1.1.1.1 tnc3-alisc1.snssdk.com" >> $dir
echo "1.1.1.1 tnc3-bjlgy.snssdk.com" >> $dir
echo "1.0.0.1 tobapplog.snssdk.com" >> $dir
echo "1.0.0.1 toblog.snssdk.com" >> $dir
echo "1.1.1.1 tsearch.snssdk.com" >> $dir
echo "1.1.1.1 ug.snssdk.com" >> $dir
echo "1.1.1.1 vas-hl-x.snssdk.com" >> $dir
echo "1.0.0.1 xlog.snssdk.com" >> $dir
echo "0.0.0.0 ad.tiktok.tv" >> $dir
echo "0.0.0.0 ads.tiktok.com" >> $dir
echo "0.0.0.0 ads.tiktok.in" >> $dir
echo "0.0.0.0 ads.tiktok.tv" >> $dir
echo "0.0.0.0 12691274.ads.tiktok.com" >> $dir
echo "0.0.0.0 url2696.ads.tiktok.com" >> $dir
echo "0.0.0.0 ads-api.tiktok.com" >> $dir
echo "0.0.0.0 ads-crm.tiktok.com" >> $dir
echo "0.0.0.0 ads-frontier.tiktok.com" >> $dir
echo "0.0.0.0 ads-imapi.tiktok.com" >> $dir
echo "0.0.0.0 ads-measurement.tiktok.com" >> $dir
echo "0.0.0.0 ads-service.tiktok.com" >> $dir
echo "0.0.0.0 12691274.ads-service.tiktok.com" >> $dir
echo "0.0.0.0 em7903.ads-service.tiktok.com" >> $dir
echo "0.0.0.0 url4077.ads-service.tiktok.com" >> $dir
echo "0.0.0.0 ads-sg.tiktok.com" >> $dir
echo "0.0.0.0 ads-useast2a.tiktok.com" >> $dir
echo "0.0.0.0 ads-va.tiktok.com" >> $dir
echo "0.0.0.0 ads-ws.tiktok.com" >> $dir
echo "0.0.0.0 analytics.tiktok.com" >> $dir
echo "0.0.0.0 analytics-attribution.tiktok.com" >> $dir
echo "0.0.0.0 analytics-attribution-va.tiktok.com" >> $dir
echo "0.0.0.0 analytics-exp-i18n.tiktok.com" >> $dir
echo "0.0.0.0 analytics-exp-sg.tiktok.com" >> $dir
echo "0.0.0.0 analytics-i18n.tiktok.com" >> $dir
echo "0.0.0.0 analytics-sg.tiktok.com" >> $dir
echo "0.0.0.0 analytics-test.tiktok.com" >> $dir
echo "0.0.0.0 analytics-useast2a.tiktok.com" >> $dir
echo "0.0.0.0 analytics-v6.tiktok.com" >> $dir
echo "0.0.0.0 business-api.tiktok.com" >> $dir
echo "0.0.0.0 ads.in.tiktok.com" >> $dir
echo "0.0.0.0 location.tiktok.com" >> $dir
echo "0.0.0.0 location-i18n.tiktok.com" >> $dir
echo "0.0.0.0 location-sg.tiktok.com" >> $dir
echo "0.0.0.0 location-va.tiktok.com" >> $dir
echo "0.0.0.0 mcs-i18n.tiktok.com" >> $dir
echo "0.0.0.0 mcs-va.tiktok.com" >> $dir
echo "1.1.1.1 mssdk-i18n.tiktok.com" >> $dir
echo "0.0.0.0 ads.us.tiktok.com" >> $dir
echo "0.0.0.0 ads-ttp2.us.tiktok.com" >> $dir
echo "0.0.0.0 analytics.us.tiktok.com" >> $dir
echo "0.0.0.0 analytics-exp.us.tiktok.com" >> $dir
echo "0.0.0.0 analytics-ttp2.us.tiktok.com" >> $dir
echo "0.0.0.0 location.us.tiktok.com" >> $dir
echo "0.0.0.0 mcs.us.tiktok.com" >> $dir
echo "0.0.0.0 mcs-ttp2.us.tiktok.com" >> $dir
echo "1.1.1.1 mssdk.us.tiktok.com" >> $dir
echo "0.0.0.0 sf16-telemetry-proxy-oci.tiktokcdn-us.com" >> $dir
echo "0.0.0.0 ad.tiktokv.com" >> $dir
echo "0.0.0.0 ad.tiktokv.us" >> $dir
echo "0.0.0.0 ad-format.tiktokv.us" >> $dir
echo "0.0.0.0 ad-format-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 ad-format-sg.tiktokv.com" >> $dir
echo "0.0.0.0 ad-format-ttp2.tiktokv.us" >> $dir
echo "0.0.0.0 ad-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 ad-instantpage.tiktokv.us" >> $dir
echo "0.0.0.0 ad-instantpage-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 ad-instantpage-ie.tiktokv.eu" >> $dir
echo "0.0.0.0 ad-instantpage-ru.tiktokv.com" >> $dir
echo "0.0.0.0 ad-instantpage-sg.tiktokv.com" >> $dir
echo "0.0.0.0 ad-instantpage-ttp2.tiktokv.eu" >> $dir
echo "0.0.0.0 ad-instantpage-ttp2.tiktokv.us" >> $dir
echo "0.0.0.0 ad-instantpage-va.tiktokv.com" >> $dir
echo "0.0.0.0 ad-sg.tiktokv.com" >> $dir
echo "0.0.0.0 ad-ttp2.tiktokv.eu" >> $dir
echo "0.0.0.0 ad-ttp2.tiktokv.us" >> $dir
echo "0.0.0.0 ad-va.tiktokv.com" >> $dir
echo "0.0.0.0 adinstantpage16-normal-useastred.tiktokv.eu" >> $dir
echo "1.0.0.1 live-video-log16-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 location.tiktokv.com" >> $dir
echo "0.0.0.0 location.tiktokv.us" >> $dir
echo "0.0.0.0 location-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 location-sg.tiktokv.com" >> $dir
echo "0.0.0.0 location-v6.tiktokv.com" >> $dir
echo "0.0.0.0 location-v6.tiktokv.eu" >> $dir
echo "0.0.0.0 location-v6.tiktokv.us" >> $dir
echo "0.0.0.0 location-v6-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 location-v6-ru.tiktokv.com" >> $dir
echo "0.0.0.0 location-v6-sg.tiktokv.com" >> $dir
echo "0.0.0.0 location-v6-ttp2.tiktokv.eu" >> $dir
echo "0.0.0.0 location-v6-ttp2.tiktokv.us" >> $dir
echo "0.0.0.0 location-v6-va.tiktokv.com" >> $dir
echo "0.0.0.0 location-va.tiktokv.com" >> $dir
echo "0.0.0.0 locationv16-normal-useastred.tiktokv.eu" >> $dir
echo "0.0.0.0 log.tiktokv.com" >> $dir
echo "0.0.0.0 log.tiktokv.us" >> $dir
echo "0.0.0.0 log-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 log-phx.tiktokv.com" >> $dir
echo "0.0.0.0 log-ru.tiktokv.com" >> $dir
echo "0.0.0.0 log-va.tiktokv.com" >> $dir
echo "0.0.0.0 log-va-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 log15-normal.tiktokv.com" >> $dir
echo "0.0.0.0 log15-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log15-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log15-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 log16-normal.tiktokv.com" >> $dir
echo "0.0.0.0 log16-platform-ycru.tiktokv.com" >> $dir
echo "0.0.0.0 log16-tmp-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log17-normal.tiktokv.com" >> $dir
echo "0.0.0.0 log17-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log17-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log17-normal-useast2a.tiktokv.com" >> $dir
echo "1.0.0.1 log19-applog-useast1a.tiktokv.com" >> $dir
echo "1.0.0.1 log19-applog-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 log19-normal.tiktokv.com" >> $dir
echo "0.0.0.0 log19-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log19-normal-no1a.tiktokv.eu" >> $dir
echo "0.0.0.0 log19-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log19-normal-useast2a.tiktokv.com" >> $dir
echo "1.0.0.1 log22-applog-useast1a.tiktokv.com" >> $dir
echo "1.0.0.1 log22-applog-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 log22-normal.tiktokv.com" >> $dir
echo "0.0.0.0 log22-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log22-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log22-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 log3-normal-c-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log3-normal-c-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log31-normal.tiktokv.com" >> $dir
echo "0.0.0.0 log31-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log31-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log31-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 log32-normal.tiktokv.com" >> $dir
echo "0.0.0.0 log32-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log32-normal-no1a.tiktokv.eu" >> $dir
echo "0.0.0.0 log32-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log32-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 log32-normal-zr.tiktokv.com" >> $dir
echo "0.0.0.0 log53-normal-c-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log58-normal.tiktokv.com" >> $dir
echo "0.0.0.0 log58-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log58-normal-c-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log58-normal-c-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log58-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log58-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 log58-normal-ycru.tiktokv.com" >> $dir
echo "0.0.0.0 log77-normal-c-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 log77-normal-c-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 log9-normal-c-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 logbk.tiktokv.com" >> $dir
echo "0.0.0.0 mcs.tiktokv.us" >> $dir
echo "0.0.0.0 mcs-ttp2.tiktokv.us" >> $dir
echo "0.0.0.0 mcs-va.tiktokv.com" >> $dir
echo "0.0.0.0 mcs-va-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 mon.tiktokv.com" >> $dir
echo "0.0.0.0 mon.tiktokv.eu" >> $dir
echo "0.0.0.0 mon-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 mon-phx.tiktokv.com" >> $dir
echo "0.0.0.0 mon-ru.tiktokv.com" >> $dir
echo "0.0.0.0 mon-sg.tiktokv.com" >> $dir
echo "0.0.0.0 mon-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 mon-va.tiktokv.com" >> $dir
echo "0.0.0.0 monbk.tiktokv.com" >> $dir
echo "1.1.1.1 mssdk-i18n.tiktokv.com" >> $dir
echo "1.1.1.1 mssdk-phx.tiktokv.com" >> $dir
echo "1.1.1.1 mssdk-ru.tiktokv.com" >> $dir
echo "1.1.1.1 mssdk-sg.tiktokv.com" >> $dir
echo "1.1.1.1 mssdk-va-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtc-logger.tiktokv.com" >> $dir
echo "0.0.0.0 rtc-logger.tiktokv.us" >> $dir
echo "0.0.0.0 rtc-logger-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 rtc-logger-ie.tiktokv.eu" >> $dir
echo "0.0.0.0 rtc-logger-ttp2.tiktokv.us" >> $dir
echo "0.0.0.0 rtc-logger-va.tiktokv.com" >> $dir
echo "0.0.0.0 rtc-logger16-normal-useastred.tiktokv.eu" >> $dir
echo "0.0.0.0 rtlog.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog-i18n.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog-phx.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog-ru.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog-va.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog-va-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog15-normal.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog15-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog15-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog15-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-applog-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-applog-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-normal.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-normal-ie.tiktokv.eu" >> $dir
echo "0.0.0.0 rtlog16-normal-ind.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-normal-no1a.tiktokv.eu" >> $dir
echo "0.0.0.0 rtlog16-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-normal-useast5.tiktokv.us" >> $dir
echo "0.0.0.0 rtlog16-normal-useast8.tiktokv.us" >> $dir
echo "0.0.0.0 rtlog16-normal-useastred.tiktokv.eu" >> $dir
echo "0.0.0.0 rtlog16-tmp-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog17-normal.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog17-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog17-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog17-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-applog-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-applog-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-normal.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-normal-zr-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog22-applog-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog22-applog-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog22-normal.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog22-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog22-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog22-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog31-normal.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog31-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog31-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog31-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog32-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog32-normal-zr.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog58-normal.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog58-normal-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog58-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog58-normal-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog58-normal-ycru.tiktokv.com" >> $dir
echo "0.0.0.0 log.us.tiktokv.com" >> $dir
echo "0.0.0.0 log16-applog-useast5.us.tiktokv.com" >> $dir
echo "0.0.0.0 log19-applog-useast5.us.tiktokv.com" >> $dir
echo "0.0.0.0 mcs.us.tiktokv.com" >> $dir
echo "0.0.0.0 mon.us.tiktokv.com" >> $dir
echo "1.1.1.1 mssdk.us.tiktokv.com" >> $dir
echo "0.0.0.0 rtc-logger.us.tiktokv.com" >> $dir
echo "0.0.0.0 rtc-logger-ttp2.us.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog.us.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-applog-useast5.us.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-normal-useast8.us.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog16-platform-useast5.us.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-applog-useast5.us.tiktokv.com" >> $dir
echo "0.0.0.0 rtlog19-platform-useast5.us.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-normal-useast8.us.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-platform-useast5.us.tiktokv.com" >> $dir
echo "0.0.0.0 xlog16-normal-useast8.us.tiktokv.com" >> $dir
echo "0.0.0.0 xlog16-platform-useast5.us.tiktokv.com" >> $dir
echo "0.0.0.0 xlog.tiktokv.com" >> $dir
echo "0.0.0.0 xlog-ru.tiktokv.com" >> $dir
echo "0.0.0.0 xlog-va.tiktokv.com" >> $dir
echo "0.0.0.0 xlog-va-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 xlog16-normal-c-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 xlog16-normal-c-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 xlog16-normal-no1a.tiktokv.eu" >> $dir
echo "0.0.0.0 xlog16-normal-useast5.tiktokv.us" >> $dir
echo "0.0.0.0 xlog16-platform-ycru.tiktokv.com" >> $dir
echo "0.0.0.0 xlog16-tmp-normal-useast1a.tiktokv.com" >> $dir
echo "1.1.1.1 log-snssdk.tiktokv-us.com" >> $dir
echo "0.0.0.0 ads-ie.tiktokw.eu" >> $dir
echo "0.0.0.0 ads-ttp2.tiktokw.eu" >> $dir
echo "0.0.0.0 analytics-ie.tiktokw.eu" >> $dir
echo "0.0.0.0 analytics-ipv6.tiktokw.us" >> $dir
echo "0.0.0.0 analytics-ttp2.tiktokw.eu" >> $dir
echo "0.0.0.0 analytics16-normal-useastred.tiktokw.eu" >> $dir
echo "0.0.0.0 location.tiktokw.us" >> $dir
echo "0.0.0.0 mcs.tiktokw.us" >> $dir
echo "0.0.0.0 mcs-ie.tiktokw.eu" >> $dir
echo "0.0.0.0 mcs-ie2.tiktokw.eu" >> $dir
echo "1.1.1.1 mssdk.tiktokw.eu" >> $dir
echo "1.1.1.1 mssdk.tiktokw.us" >> $dir
echo "0.0.0.0 h4g3z1-native.tiktok.web.app" >> $dir
echo "0.0.0.0 tnc-boot.tiktokv.com" >> $dir
echo "0.0.0.0 tnc0-normal-my.tiktokv.com" >> $dir
echo "0.0.0.0 tnc0-normal-sg1.tiktokv.com" >> $dir
echo "0.0.0.0 tnc0-normal-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc100-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 tnc100-my.tiktokv.com" >> $dir
echo "0.0.0.0 tnc100-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc100-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-normal-ie.tiktokv.eu" >> $dir
echo "0.0.0.0 tnc16-normal-no1a.tiktokv.eu" >> $dir
echo "0.0.0.0 tnc16-normal-useast5.tiktokv.us" >> $dir
echo "0.0.0.0 tnc16-normal-useast8.tiktokv.us" >> $dir
echo "0.0.0.0 tnc16-normal-useastred.tiktokv.eu" >> $dir
echo "0.0.0.0 tnc16-normal-ycru.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-normal-zr-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-normal-zr-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-platform-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-platform-my.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-platform-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc16-platform-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc19-normal-ie.tiktokv.eu" >> $dir
echo "0.0.0.0 tnc19-normal-no1a.tiktokv.eu" >> $dir
echo "0.0.0.0 tnc19-normal-useast5.tiktokv.us" >> $dir
echo "0.0.0.0 tnc19-normal-useast8.tiktokv.us" >> $dir
echo "0.0.0.0 tnc31-normal-zr-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc31-platform-alisg.tiktokv.com" >> $dir
echo "0.0.0.0 tnc31-platform-useast1a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc31-platform-useast2a.tiktokv.com" >> $dir
echo "0.0.0.0 tnc58-platform-ycru.tiktokv.com" >> $dir
echo "0.0.0.0 ad-format.us.tiktokv.com" >> $dir
echo "0.0.0.0 ad-format-ttp2.us.tiktokv.com" >> $dir
echo "0.0.0.0 ad-instantpage.us.tiktokv.com" >> $dir
echo "0.0.0.0 ad-instantpage-ttp2.us.tiktokv.com" >> $dir
echo "0.0.0.0 location.us.tiktokv.com" >> $dir
echo "0.0.0.0 location-ttp2.us.tiktokv.com" >> $dir
sleep 1
cp -r -f /data/local/tmp/hosts $dirhosts
chmod -R 644 $dirhosts
mount -o ro,remount / 2>/dev/null || true
}

aktif (){
clear
banner
echo ""
echo ""
    echo "🌀${G}===== TBloker di Aktifkan !!! =====${N}🌀"
}

nonaktif (){
clear
banner
echo ""
echo ""
    echo "🌀${R}===== TBloker di Non-Aktifkan !!! =====${N}🌀"
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
		echo -e "${G}  \ ___________/__${G}""${RGB} TIKTOK BLOKER DILANJUTKAN  !!${RGB}"
            echo ""
            echo ""
            echo ""	
sleep 1			
    clear
    banner
	echo ""
    echo ""
    echo "🌀${Y}===== MENU LANJUTAN =====${N}🌀"
    echo "${G}1. Aktifkan TikTok Bloker"
    echo "${G}2. Non-Aktifkan TikTok Bloker"
    echo "${W}0. Keluar"
    echo "========================"
    echo ""
    echo ""
    echo "${Y}> Aktifkan ketika mau CO ${N}"
    echo "${Y}> Non-Aktifkan ketika mau NANDON ${N}"
    echo ""
    echo ""
    echo "Masukkan pilihan: " 
    read choice

    case $choice in
        1)
            echo "Aktifkan TikTok Bloker..."
            kt_host >/dev/null
			aktif
            ;;
        2)
            echo "Non-Aktifkan TikTok Bloker..."
            rm -f /data/adb/modules/ktools_drm/system/etc/hosts
			nonaktif
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
  send_telegram "✅ Serial $SERIAL terdaftar. Lanjutkan TBloker"
  #sleep 3
  proses
else
  send_telegram "⛔ Serial $SERIAL tidak terdaftar! Script TBloker dibatalkan."
  #sleep 3
  bloked
  exit 1
fi