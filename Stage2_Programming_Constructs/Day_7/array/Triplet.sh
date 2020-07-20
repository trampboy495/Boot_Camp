#!/bin/bash -x
declare -a random sorted
function initializeArray() {
        echo "enter 10 no to initialize array"
        for (( j=0; j<10; j++ ))
	do
		read random[$j]
	done
}
function sortArray() {
        IFS=$'\n' sorted=($(sort -n <<<"${random[*]}"))
        unset IFS
        echo ${sorted[@]}
}
function FindTriplet() {
        n=${#sorted[@]}
        for (( j=0; j< $n-1; j++ ))
        do
                l=$(($j + 1))
                r=$(($n - 1))
                temp=${sorted[j]}
        while [ $l -lt $r ]
        do
                if [ `expr $temp + ${sorted[l]} + ${sorted[r]}` -eq 0 ]
                then
                        echo "$temp,${sorted[l]},${sorted[r]} is a triplet"
                        ((l++))
                        ((r--))
                elif [ `expr $temp + ${sorted[l]} + ${sorted[r]}` -lt 0 ]
                then
                        ((l++))
                else
                        ((r--))
                fi
        done
        done
}
initializeArray
sortArray
FindTriplet
