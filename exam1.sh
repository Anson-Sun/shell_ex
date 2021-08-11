#! /bin/bash
if [ $# = 1 ]
then
    INPUT=$1
    echo
    while [ $INPUT != " " ]
    do
        echo $INPUT >> $1
        echo "Input:"
        read INPUT
    done
    cat $1
    else
        echo "usage:exam1.sh filename"
        exit 0
    fi
    exit 0