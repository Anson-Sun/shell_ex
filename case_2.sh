#! /bin/bash
read i

    case $i in
        -v|--verbose) echo "verbose";;
        -h?) echo "help";;
        -g*) echo "global";;
        -k[hc]) echo "kite";;
        *) echo "default";;
    esac