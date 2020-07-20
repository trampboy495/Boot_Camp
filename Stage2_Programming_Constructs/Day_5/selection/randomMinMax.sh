#!/bin/bash -x
count=0
max=100
min=999
while [ $count -lt 5 ]
do
	n=$((RANDOM % 900 + 100))
	if [ $n -gt $max ]
	then
		max=$n
        fi
	if [ $n -lt $min ]
	then
		min=$n
	fi
	count=$(($count + 1))
done
echo " the maximum no is $max and minimum no is $min"
