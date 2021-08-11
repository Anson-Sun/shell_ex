#！ /bin/bash
error_flag=0            #initialize the error flag, indicating no error
while true              #loop forever
do
    if [ $error_flag -eq 0 ]; then   #check for the error
        tput clear ; tput cup 5 10
        echo "UNIX Library - ${BOLD}EDIT MENU ${NORMAL}"
        tput cup 7 20               #place the cursor
        echo "0: ${BOLD}RETURN ${NORMAL}To the Main Menu"
        tput cup 9 20; echo "1: ${BOLD}ADD${NORMAL}"
        tput cup 11 20; echo "2: ${BOLD}UPDATE STATUS${NORMAL}"
        tput cup 13 20; echo "3: ${BOLD}DISPLAY${NORMAL}"
        tput cup 15 20; echo "4: ${BOLD}DELETE${NORMAL}"
    fi
    error_flag=0                    #reset error flag
    tput cup 17 10;echo "Enter your choice："
    read choice
    case $choice in   
        0) exit 0 ;;
        1) ADD.sh ;;
        2) UPDATE.sh ;;
        3) DISPLAY.sh ;;
        4) DELETE.sh ;;
        *) ERROR 20 10
        tput cup 20 1; tput ed
            error_flag=1 ;;

    esac
done
exit 0
