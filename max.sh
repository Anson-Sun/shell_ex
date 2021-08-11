#! /bin/bash
a=(0 0 0)
read s_in
set $s_in
a[1]=$1
a[2]=$2
a[3]=$3
max=${a[1]}
for i in ${!a[@]};
do
    if [[ ${a[$i]} -gt ${sum} ]]; then
        max=${a[$i]}
    fi
done
printf "The largest number is: $max\n"
