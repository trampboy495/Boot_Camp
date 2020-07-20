#!/bin/bash -x
read -p " enter the three values " a b c
Computation1=$((a+b*c))
Computation2=$((a*b+c))
Computation3=$((c+a/b))
Computation4=$((a%b+c))
declare -A ComputationResult
ComputationResult=([1]=$Computation1 [2]=$Computation2 [3]=$Computation3 [4]=$Computation4)
counter=0
for i in ${!ComputationResult[@]}
do
	array[ ((counter++)) ]=${ComputationResult[$i]}
done
n=${#array[@]}
for (( i=1; i< $n; i++ ))
do
	temp=${array[i]}
	j=$(($i-1))
	while [ $j -ge 0 -a ${array[j]} -gt $temp ]
	do
		array[ ($j+1) ]=${array[j]}
		((j--))
	done
	array[($j+1)]=$temp
done
for (( i=$(($n-1)); i>=0; i-- ))
do
	echo "Result in descending order ${array[i]}"
done
echo "Result in ascending order ${array[*]}"
