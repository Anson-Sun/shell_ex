#! /bin/sh
trap "" 2 3
stty -echo
clear
tput cup 5 10
printf "Enter your password:"
read PWORD1
clear
tput cup 10 20
printf "This system is locked..."
PWORD2=
until [ "$PWORD1" = "$PWORD2" ]; do
    read PWORD2
done
stty echo
clear
exit 0