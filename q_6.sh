#!/bin/bash
gcd()
{
	a=$1
	b=$2
	while [ $b != 0 ]
	do
		e=$a
		f=$b
		a=$f
		b=$( echo "$e % $f" | bc )
	done
	echo "GCD:"$a
}
lcm()
{
	g=$1
	h=$2
	a=$3
        i=$( echo "$g * $h" | bc )
        j=$( echo "$i" / "$a" | bc )
        echo "LCM:"$j
}
read -p "Enter A: " a
read -p "Enter B: " b
g=$a
h=$b
gcd $g $h
lcm $g $h $a

