#! /bin/bash
OLD_IFS="$IFS"
answer=y
while [ "$answer" = y ]
do
    tput clear; tput cup 3 5 ; echo "Enter the Author/Title>"
    read response
    grep -i "$response"ULIB_FILE>TEMP
    if [ -s TEMP ]
    then
        IFS=":"
        read title author category sttus bname date < TEMP
        tput cup 5 10
        echo "UNIX Library - ${BOLD}DELETE MODE ${NORMAL}"
        tput cup 7 23 ; echo "Title: $title"
        tput cup 8 22 ; echo "Author: $author"
        case $category in
            [Tt][Bb]    ) word=textbook;;
            [Ss][Yy][Ss]) word=system;;
            [Rr][Ee][Ff]) word=refernence;;
                       *) word=undefined;;
        esac
        tput cup 9 20 ; echo "Category: $word"
        tput cup 10 22; echo "Status: $status"
        if [ "$status" = "out" ]
        then
            tput cup 11 14 ; echo "Checked out by: $bname"
            tput cup 12 24 ; echo "Date: $date"
        fi
        tput cup 13 20 ; echo "Detele this book? (Y)es or (N)o>"
        read answer
        if [ $answer = y -o $answer = Y ]
        then
            grap -iv "$title:$author:$category:$status:$bname:$date"ULIB_FILE>TEMP
            mv TEMP ULIB_FILE
        fi
        else
            tput cup 7 10 ; echo "response not found"
    fi
    tput cup 5 10 ; echo "Anymor to delet? (Y)es or (N)o>"
    read answer
    case $answer in
        [Yy]*) answer=y;;
            *) answer=n;;
    esac
done
IFS="$OLD_IFS"
rm TEMP
exit 0