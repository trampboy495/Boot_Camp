#!/bin/bash -x
echo "input the date"
read d
echo "input the month"
read m
case $m in
        "March")
                if [ $d -ge 20 -a $d -le 31 ]
                then
                        echo "true"
                else
                        echo "false"
                fi
 ;;
        "May")
                if [ $d -le 31 ]
                then
                        echo "true"
                else
                        echo "false"
                fi
 ;;
        "June")
                if [ $d -le 20 ]
                then
                        echo "true"
                else
                        echo "false"
                fi
 ;;
        *)
                echo "false"
 ;;
esac
