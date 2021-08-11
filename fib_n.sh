#! /bin/bash
list=(0 1)
read n
for i in `seq 2 $n`
do
      list[$i]=`expr ${list[-1]} + ${list[-2]}`
done
echo ${list[@]} 