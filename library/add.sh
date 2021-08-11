#! /bin/sh

ANSWER=y
while [ "$ANSWER" = y ]; do
    # 显示输入菜单
    tput clear
    tput cup 5 10
    printf "UNIX Library - ${BOLD}ADD MODE${NORMAL}\n"
    tput cup 7 23
    printf "Title:\n"
    tput cup 9 22
    printf "Author:\n"
    tput cup 11 20
    printf "Category:\n"
    tput cup 12 20
    printf "sys: system, ref: reference, tb: textbook\n"

    # 输入书名
    tput cup 7 30
    read TITLE
    tput cup 9 30
    read AUTHOR
    tput cup 11 30
    read CATEGORY
    STATUS=in

    # 写入文件
    echo "$TITLE:$AUTHOR:$CATEGORY:$STATUS:$BNAME:$DATE" >> ULIB_FILE

    # 是否还需输入
    tput cup 14 10
    printf "Any more to add? (Y)es or (N)o>\n"
    read ANSWER
    case $ANSWER in
        [Yy]*) ANSWER=y;;
        *) ANSWER=n;;
    esac
done

exit 0
