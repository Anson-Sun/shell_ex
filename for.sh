#! /bin/bash
a=(0 0 0)
read s_in
set $s_in
a[1]=$2
a[2]=$3
a[3]=$4
for i in 1 2 3
do
    sum=$((sum+${a[$i]}))
done
printf "$2 + $3 + $4 = $sum"