#!/bin/bash -x

MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]; do
 array[$count]=$((RANDOM%1000))
 let "count += 1"
done


echo "${array[@]}"

sort=0
#echo ${array[@]}
len=${#array[@]}
#echo $len


for ((i=1; i<$len; i++))
do
    for((j=i+1; j<$len; j++))
    do
        if [ ${array[i]} -le ${array[j]} ]
        then
            continue
        else
            sort=${array[i]}
            array[i]=${array[j]}
            array[j]=$sort
        fi
    done
done
echo ${array[@]}
echo "2nd smallest number " ${array[2]}
echo "2nd largest number" ${array[8]}
