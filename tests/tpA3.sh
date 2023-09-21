#!/bin/bash


if [[ -n "$1" ]]
then
	n1=$1
else
	n1=5
fi
if [[ -n "$2" ]]
then
	n2=$2
else
	n2=($n1+10)
fi
for ((i=$n1; i<=$n2; i++))
do
	echo $i
done
