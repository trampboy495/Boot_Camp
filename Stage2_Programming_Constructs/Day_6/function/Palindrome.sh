#!/bin/bash -x
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
	else
	echo "is not a palindrome"
	fi
}
echo "enter two numbers to check for palindrome"
read n1 n2
palindrome $n1
palindrome $n2


