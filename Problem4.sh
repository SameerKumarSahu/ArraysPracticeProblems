#!/bin/bash -x

counter=1
for (( i=1; i<=5; i++ ))
do
	read -p "Enter 5 numbers " x
	#counter=1
	array[((counter++))]=${x}
	#echo ${array[@]}

done

a=
z=${#array[@]}
echo "$z"

echo "array length is : ${#array[@]}"

sum=0
for ((i=1; i<=$((${#array[@]}-2)); i++ ))
do
	for ((j=i+1; j<=$((${#array[@]}-1)); j++ ))
	do
		for((k=j+1;j<=$z; k++ ))
		do
			if [[${array[$i]} + ${array[$j]} + ${array[$k]} == 0]]
			then
				echo "${array[i]},${array[j]},${array[k]}"
			break
			fi
		done
	done
done

