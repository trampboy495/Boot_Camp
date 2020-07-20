#!/bin/bash -x
read -p "enter the three nos" a b c
r1=`echo "scale=2;$a+$b*$c" | bc`
r2=`echo "scale=2;$a%$b+$c" | bc`
r3=`echo "scale=2;$c+$a/$b" | bc`
r4=`echo "scale=2;$a*$b+$c" | bc`
min=$r1
max=$r1
for i in $r2 $r3 $r4
do
        if [ 1 -eq "$(echo "$i > $max" | bc)" ]
        then
                max=$i
        elif [ 1 -eq "$(echo "$i < $min" | bc)" ]
        then
                min=$i
        else
        continue
        fi
done
echo "maximum is $max and minimum is $min"
