#！ /bin/bash
clear
printf "\n\nEnter your password:"
read PWDROD1
clear
printf "\n\nThis system is locked..."
PWDROD2=
until [ "$PWORD1" = "$PWORD2" ];do
    read PWORD2
done
exit 0