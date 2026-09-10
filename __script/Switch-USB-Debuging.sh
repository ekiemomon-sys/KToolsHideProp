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

# Fungsi untuk menampilkan menu
show_menu() {
    echo "${W} 1. Aktifkan Opsi Pengembang${N}"
    echo "${W} 2. Nonaktifkan Opsi Pengembang${N}"
    echo "${W} 3. Aktifkan USB Debugging${N}"
    echo "${W} 4. Nonaktifkan USB Debugging${N}"
    echo "${W} 5. Keluar${N}"
}

# Fungsi untuk mengubah pengaturan
switch_setting() {
    case $1 in
        1)
            settings put global development_settings_enabled 1
            clear
            banner
            echo "${G} ≠≠≠≠≠ Opsi Pengembang telah diaktifkan. ≠≠≠≠≠${N}"
            echo ""
            ;;
        2)
            settings put global development_settings_enabled 0
            clear
            banner
            echo "${R} ≠≠≠≠≠ Opsi Pengembang telah dinonaktifkan. ≠≠≠≠≠${N}"
            echo ""
            ;;
        3)
            settings put global adb_enabled 1
            clear
            banner
            echo "${G} ≠≠≠≠≠ USB Debugging telah diaktifkan. ≠≠≠≠≠${N}"
            echo ""
            ;;
        4)
            settings put global adb_enabled 0
            clear
            banner
            echo "${R} ≠≠≠≠≠ USB Debugging telah dinonaktifkan. ≠≠≠≠≠${N}"
            echo ""
            ;;
        5)
            clear
            banner
            echo "Keluar dari script."
            exit 0
            ;;
        *)
            clear
            banner
            echo "${Y} ≠≠≠≠≠ Pilihan tidak valid. ≠≠≠≠≠${N}"
            echo ""
            ;;
    esac
}

# Main script
while true; do
    show_menu
    echo -n "${Y}    > Pilih opsi (1-5): ${N}"
    read choice
    switch_setting $choice
done