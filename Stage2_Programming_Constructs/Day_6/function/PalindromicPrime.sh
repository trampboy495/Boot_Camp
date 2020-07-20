#!/bin/bash -x
prime () {
r=0
        for (( i=2; i<=$(($1/2)); i++ ))
        do
                if [ `expr $1 % $i` -eq 0 ]
                then
                        r=1
                        break
                fi
        done
        if [ $r -eq 0 ]
        then
                echo "enter no is Palindromicprime"
        else
                echo="enter no is not the Palindromicprime number"
        fi
}
palindrome () {
        check="$1"
        check1=""
        temp=$1
        while [ $temp -gt 0 ]
        do
                r=$(($temp % 10))
                check1+="$r"
                temp=$(($temp/10))
        done
        if [ $check = $check1 ]
        then
                echo "is a palindrome"
                prime $n
        else
                echo "is not a palindrome"
        fi
}
read -p "enter the number to check for palindromicprime" n
palindrome $n

