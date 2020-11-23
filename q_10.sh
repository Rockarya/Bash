#!/bin/bash
arr=("$@")
n=$#
for((i=0;i<n;i++))
do
	for((j=0;j<n-i-1;j++))
	do
		if ((arr[j] > arr[(j+1)] ))
		then
			{
				k=$(echo "$j + 1" | bc -l)
				temp=${arr[$j]}
				arr[$j]=${arr[$k]}
				arr[$k]=$temp
			}
		fi
	done
done

for((i=0;i<n;i++))
do
	echo ${arr[$i]} " "
done

