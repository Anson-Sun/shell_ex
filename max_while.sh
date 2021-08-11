#! /bin/bash
a=(0 0 0)
read s_in
set $s_in
a[1]=$1
a[2]=$2
a[3]=$3
max=${a[1]}
i=1
while [ $i -lt 4 ]
do
    if [[ ${a[$i]} -gt ${sum} ]]; then
        max=${a[$i]}
    fi
    i=$((i+1))
done
printf "The largest number is: $max\n"
