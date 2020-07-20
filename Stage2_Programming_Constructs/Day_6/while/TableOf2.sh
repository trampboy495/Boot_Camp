#!/bin/bash -x
product=1
i=1
read -p "input the limit of power" n
while [ $n -gt 0 -a $product -ne 256 ]
do
        product=$(($product*2))
        echo "2^$i    $product"
        ((n--))
        ((i++))
done

