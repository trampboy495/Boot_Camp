#!/bin/bash -x
declare -a random
function getArray() {
for (( i=0; i<10; i++ ))
do
        random[$i]=$((RANDOM%900+100))
done
}
function sortArray() {
        printf '%b\n' "array after sorting\n$@" | sort -n
        echo "second smallest no"
        printf '%s\n' "$@" | sort -n | awk '{if(NR==2) print $0}'
        echo "Second largest no"
        printf '%s\n' "$@" | sort -n | awk '{if(NR==9) print $0}'
}
getArray
echo -e "array with out sorting \n ${random[@]}"
sortArray ${random[@]}

