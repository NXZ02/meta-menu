# scan wifi and not root
#Tools list
#Adding colors


R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

clear


figlet " Meta-menu "


echo
echo " ${C}[1] Windows "
echo " [2] Android "
echo " [3] Linux "
echo " [4] Exit " ${W}
echo
read -p ${Y}"Select option: "${W} user_input
echo

get_arch() {
    printf ${G}"[*] Checking device architecture ..."${W}
    case $(getprop ro.product.cpu.abi) in
        arm64-v8a)
            SYS_ARCH=arm64
            ;;
        armeabi|armeabi-v7a)
            SYS_ARCH=armhf
            ;;
        *)
            unsupported_arch
            ;;
    esac
}

window_1() {
./file1.sh

}


android() {
./file3.sh

}


linux () {
./file2.sh

}

exit_1() {
exit

}


if [[ $user_input == "1" ]]; then
        echo ${G}"[*] Open ..." ${W}
        echo
window_1

elif [[ $user_input == "2" ]]; then
          echo ${G}"[*] wifi connected ..." ${W}
          echo
android



elif [[ $user_input == "3" ]]; then
          echo ${G}"[*] wifi connected ..." ${W}
          echo
linux


elif [[ $user_input == "4" ]]; then
          echo ${G}"[*] Exit ..." ${W}
          echo
exit


else

echo ${R}"[*] Error, Select a option from the above list"${W}
echo

fi
