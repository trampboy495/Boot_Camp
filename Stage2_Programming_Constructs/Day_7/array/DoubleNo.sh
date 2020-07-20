#!/bin/bash -x
counter=0
for (( i=1; i< 100; i++ ))
do
	if [ $(($i%11)) -eq 0 ]
	then
		double[ ((counter++)) ]=$i
	fi
done
echo ${double[@]}

