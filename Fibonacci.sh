#!/bin/bash
#Fibonacci
x=1
y=1
n=10

if [ "$n" == 1 ]; then
	echo $x
elif [ "$n" == 2 ]; then
	echo $x
	echo $y
else
	echo $x
	echo $y
	for i in $(seq 3 $n); do
		z=$(expr $x + $y)
		x=$y
		y=$z
		echo $z
	done
fi

