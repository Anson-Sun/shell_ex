#!/bin/sh
if [ $# != 1 ]; then
    printf "Usage: $0 filename\n"
    exit 1
fi

while true; do
    printf "please input: "
    read INPUT
    [ "$INPUT" = "" ] && break
    echo $INPUT >> $1
done

cat $1