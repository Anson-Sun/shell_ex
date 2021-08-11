error_flag=0
while true
    do
        if [ $error_flag -eq 0 ]
        then
            tput clear ; tput cup 5 10
            echo "UNIX Library - ${BOLD}REPORTS MENU ${NORMAL}"
            tput cup 9 20 ; echo "1:Sorted by ${BOLD}TITLES ${NORMAL}"
            tput cup 11 20 ; echo "1:Sorted by ${BOLD}AUTHOR ${NORMAL}"
            tput cup 13 20 ; echo "1:Sorted by ${BOLD}CATEGORY ${NORMAL}"
        fi
        error_flag=0
        tput cup 17 10 ; echo "Enter your choice>"
        read choice
        case $choice in
            0) exit 0;;
            1) REPORT_NO1.sh;;
            2) REPORT_NO.sh 2;;
            3) REPORT_NO.sh 3;;
            *) ERROR.sh 20 10
                tput cup 20 1 ; tput ed
                error_flag=1;;
        esac
    done
exit 0