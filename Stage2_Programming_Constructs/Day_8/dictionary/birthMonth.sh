#!/bin/bash -x
declare -A dict=([01]=0 [02]=0 [03]=0 [04]=0 [05]=0 [06]=0 [07]=0 [08]=0 [09]=0 [10]=0 [11]=0 [12]=0)
for r in `shuf -n 50 -i $(date -d '1992-01-01' '+%s')-$(date -d '1992-12-31' '+%s') | xargs -I{} date -d '@{}' '+%m'`
do
	dict[$r]=`expr ${dict[$r]} + 1`
done
for i in ${!dict[@]}
do
        echo $i ${dict[$i]}
done

