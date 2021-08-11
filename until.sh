#! /bin/bash
a=(0 0 0)
read s_in
set $s_in
a[1]=$2
a[2]=$3
a[3]=$4
i=1
until [ $i -eq 4 ]
do
    sum=$((sum+${a[$i]}))
    i=$((i+1))
done
printf "$2 + $3 + $4 = $sum\n"