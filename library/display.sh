#! /bin/sh

# 保存间隔环境变量
old_IFS="$IFS"

ANSWER=y
while [ "$ANSWER" = y ]; do
    tput clear	# 清屏

    # 输入书名
    tput cup 3 5
    printf "Enter the Title/Author> "
    read response

    # 查找数目
    grep -i "$response" ULIB_FILE > temp
    if [ -s temp ]; then
        # 找到，输出
        IFS=":"
        read title author category status bname date < temp
        tput cup 5 10
        printf "UNIX Library - ${BOLD}DISPLAY MODE${NORMAL}"
        tput cup 7 23
        printf "Title: $title"
        tput cup 8 22
        printf "Author: $author"
        # 根据类型输出
        case $category in
            [Tt][Bb]) word=textbook;;
            [Ss][Yy][Ss]) word=system;;
            [Rr][Ee][Ff]) word=reference;;
            *) word=undefined;;
        esac
        tput cup 9 20
        printf "Category: $category"
        tput cup 10 22
        printf "Status: $status"
        if [ "$status" = "out" ]; then
            tput cup 11 14
            printf "Check out by $bname"
            tput cup 12 24
            printf "Date: $date"
        fi
    else
	    # 没找到
        tput cup 7 10
        printf "$response not found"
    fi

    # 提示是否继续输出
    tput cup 15 10
    printf "Any more to look? (Y)es or (N)o> "
    read ANSWER
    case $ANSWER in
        [Yy]*) ANSWER=y;;
        *) ANSWER=n;;
    esac
done

IFS="old_IFS"
exit 0
