#!/bin/bash -x
Heads=1
Tails=0
NoOfWinsForHeads=0
NoOfWinsForTails=0
while [ $NoOfWinsForHeads -lt 21 -a $NoOfWinsForTails -lt 21  ]
do
	r=$((RANDOM % 2))
	if [ $r -eq $Heads ]
	then
		((NoOfWinsForHeads++))
	else
		((NoOfWinsForTails++))
	fi
done
if [ $NoOfWinsForHeads -gt $NoOfWinsForTails ]
then
	echo "heads win by $(($NoOfWinsForHeads-$NoOfWinsForTails))"
elif [ $NoOfWinsForHeads -lt $NoOfWinsForTails ]
then
	echo "tails win by $(($NoOfWinsForTails-$NoOfWinsForHeads))"
else
	while [ $(($NoOfWinsForHeads-$NoOfWinsForTails)) -ne 2 -a $(($NoOfWinsForHeads-$NoOfWinsForTails)) -ne -2 ]
	do
		r=$((RANDOM%2))
		if [ $r -eq $Heads ]
		then
			((NoOfWinsForHeads++))
		else
			((NoOfWinsForTails++))
		fi
	done
fi
