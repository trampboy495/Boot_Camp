#!/bin/bash -x
read -p "enter the no between 1 to 100" n
temp=$n
sum=0
while [ $temp -gt 0 -o $sum -gt 9 ]
do
        if [ $temp -eq 0 ]
        then
                temp=$sum
                sum=0
        fi
        sum=$(($sum+($temp%10)))
        temp=$(($temp/10))
done
if [ $sum -eq 1 ]
then
        echo "$n is magic no"
else
        echo "$n is not a magic no"
fi

