#!/bin/bash
read -p "Enter name:" user
IFS='-' read -p "DOB:" m y
w=12
p=13
q=2019
a=$( echo "$p - $m" | bc -l)
b=$( echo " $q - $y" | bc -l )
c=$( echo "$b * $w" | bc -l)
age=$( echo "$c + $a" | bc -l)
echo "Hello $user your age is $age months."

