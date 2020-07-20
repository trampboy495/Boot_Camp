#!/bin/bash-x
counter=0
for (( i=0; i<10; i++ ))
do
        random[ ((counter++)) ]=$((RANDOM % 900 + 100))
done
echo ${random[@]}
min=999
min2=999
max=100
max2=100
Find2Smallest() {
for (( i=0; i<10; i++ ))
do
        if [ ${random[i]} -lt $min ]
        then
                min2=$min
                min=${random[i]}
        else
        if [ ${random[i]} -lt $min2 -a ${random[i]} -ne $min ]
        then
                min2=${random[i]}
        fi
        fi
done
}
Find2Largest() {
for (( i=0; i<10; i++ ))
do
        if [ ${random[i]} -gt $max ]
        then
                max2=$max
                max=${random[i]}
        else
        if [ ${random[i]} -gt $max2 -a ${random[i]} -ne $max ]
        then
                max2=${random[i]}
        fi
        fi
done
}
Find2Smallest
Find2Largest
echo "the second largest no is $max2"
echo "the second smallest no is $min2"

