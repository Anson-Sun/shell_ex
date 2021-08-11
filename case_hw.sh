#! /bin/bash
for i in "$@"
do
    case $i in
        -v|--verbose) echo "verbose";;
        -d) echo "debug";;
        *) echo "usage $0 -d|-v";;
    esac
done