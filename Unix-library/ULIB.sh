#! /bin/bash
BOLD=`tput smso`
NORMAL=`tput rmso`
export BOLD NORMAL

#主界面形式
tput clear
tput cup 5 15
echo "${BOLD}Super Duper UNIX Library"
tput cup 12 10
echo "${NORMAL}This is the UNIX library application"
tput cup 14 10 ; echo "Please enter any key to continue...\n"
read answer
error_flag=0
while true
do
    if [ $error_flag -eq 0 ]
    then
        tput clear
        tput cup 5 10
        echo "UNIX Library - ${BOLD}MAIN MENU ${NORMAL}"
        tput cup 7 20 ; echo "0: ${BOLD}EXIT${NORMAL} this program"
        tput cup 9 20 ; echo "1: ${BOLD}EDIT${NORMAL} Menu"
        tput cup 11 20 ; echo "2: ${BOLD}REPORTS${NORMAL} Menu"
        error_flag=0
    fi
    tput cup 13 10 ; echo "Enter your choice:\n"

    #用户选择执行脚本
    read choice
    
    case $choice in
        0) tput clear ; exit 0 ;;
        1) EDIT.sh ;;
        2) REPORTS.sh ;;
        *) ERROR 20 10 
        tput cup 20 1 ; tput ed
        error_flag=1 ;;
    esac
done
exit 0