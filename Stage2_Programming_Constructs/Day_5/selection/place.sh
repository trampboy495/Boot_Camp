#!/bin/bash -x
read -p "enter the no" n
if [ $n -eq 1 ]
then
        echo "Unit"
elif [ $n -eq 10 ]
then
        echo "Ten"
elif [ $n -eq 100 ]
then
        echo "Hundred"
elif [ $n -eq 1000 ]
then
        echo "Thousand"
elif [ $n -eq 10000 ]
then
        echo "Ten Thousand"
elif [ $n -eq 100000 ]
then
        echo "Lakh"
else
        echo "Input out of limit"
fi
