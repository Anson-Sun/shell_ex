#! /bin/sh
IFS=":"
case $1 in
    1) sort -f -d -t : ULIB_FILE > TEMP ;;
    2) sort -f -d -t : +1 ULIB_FILE > TEMP ;;
    3) sort -f -d -t : +2 ULIB_FILE > TEMP ;;
esac
while read title author category status bname date
do
    echo "Title: $title">> TEMP
    echo "Author: $author">> TEMP
    echo "Title: $category">> TEMP
    case $category in
        [Tt][Bb]    ) word=textbook ;;
        [Ss][Yy][Ss]) word=system ;;
        [Rr][Ee][Ff]) word=reference ;;
                   *) word=undefined ;;
    esac
    echo "Category:$word">>TEMP
    echo "Status:$status\n" >>PTEMP
    if [ "$status" = "out" ]
    then
        echo "Checked out by:$bname">>PTEMP
        echo "Date:$date\n">>PTEMP
    fi
    echo >>PTEMP
    done < TEMP
    pg -c -p "Page %d:"PTEMP
    rm TEMP PTEMP
exit 0