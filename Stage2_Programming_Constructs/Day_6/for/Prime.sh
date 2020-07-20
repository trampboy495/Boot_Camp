#!/bin/bash -x
r=0
read -p "enter the start and end of  the range" s e
echo "the prime numbers between $s and $e are"
for (( n=$s; n<=e; n++ ))
do
        for (( i=2; i<n; i++ ))
        do
                if [ `expr $n % $i` -eq 0 ]
                then
                        r=1
                        break
                fi
        done
        if [ $r -eq 0 ]
        then
                echo $n
        fi
        r=0
done

