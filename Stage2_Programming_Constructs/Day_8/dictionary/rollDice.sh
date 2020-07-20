#!/bin/bash -x
declare -A dict=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)
r=0
function rolldice() {
while [ 1 -eq 1 ]
do
        r=$((RANDOM %  6 + 1))
        dict[$r]=`expr ${dict[$r]} + 1`
        if [ ${dict[$r]} -eq 10 ]
        then
                break
        fi
done
}
function Findleast() {
min=10
for i in ${!dict[@]}
do
        if [ $min -gt ${dict[$i]} ]
        then
                min=${dict[$i]}
                r=$i
        fi
done
echo "$r has the least occurence"
}
rolldice
for i in ${!dict[@]}
do
        echo $i ${dict[$i]}
done
echo "$r has the maximum occurence"
Findleast

