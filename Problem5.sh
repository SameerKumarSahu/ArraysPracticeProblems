#!/bin/bash -x
counter=0

for ((i=1; i<=100; i++ ))
do 

	if (( $i % 11 == 0 ))
	then
	array_list[((counter++))]=${i}
	fi

done


echo ${array_list[@]}

