#!/bin/bash -x
stake=100
noOfbets=0
noOfwins=0
while [ $stake -ne 0 -a $stake -ne 200 ]
do
        r=$((RANDOM%2))
        if [ $r -eq 1 ]
        then
                ((stake++))
                ((noOfwins++))
        else
                ((stake--))
        fi
        ((noOfbets++))
done
echo "no of wins are $noOfwins and no of bets are $noOfbets"
