#!/bin/bash
j=$(ping -c $1 google.com)
num=0
echo "$(echo "$j" | head -1)"
while [ $num -lt $1 ]
do

	temp="$(echo "$j" | head -$(($num+2)) | tail -1)"
	echo "$((num+1)). $temp"
	num=$((num+1))	
done
echo "$(echo "$j" | tail -4)"
