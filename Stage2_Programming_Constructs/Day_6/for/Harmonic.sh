#!/bin/bash -x
h=1
read -p "enter the limit" n
for (( i=1; i<=n; i++ ))
do
        h=`echo "scale=4; $h+(1/$i)" | bc`
done
echo "the harmonic no is $h"
