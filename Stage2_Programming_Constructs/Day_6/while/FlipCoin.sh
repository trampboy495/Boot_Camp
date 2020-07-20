#!/bin/bash -x
NoOfWinsForHeads=0
NoOfWinsForTails=0
isTails=0
isHeads=1
while [ $NoOfWinsForHeads -lt 11 -a $NoOfWinsForTails -lt 11 ]
do
        r=$((RANDOM%2))
        if [ $r -eq $isHeads ]
        then
                echo "Heads"
                ((NoOfWinsForHeads++))
        else
                echo "Tails"
                ((NoOfWinsForTails++))
        fi
done

