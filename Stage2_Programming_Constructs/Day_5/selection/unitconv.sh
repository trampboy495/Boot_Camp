#!/bin/bash -x
read -p "enter the value of length" n
echo -e "choose the conversion \n 1.Feet to Inch \n 2.Feet to Meter \n 3.Inch to Feet \n 4.Meter to Feet"
read ch
case $ch in
        1)
                r=`echo "scale=2; $n*12" | bc`
        ;;
        2)
                r=`echo "scale=2; $n/3.281" | bc`
        ;;
        3)
                r=`echo "scale=2; $n/12" | bc`
        ;;
        4)
                r=`echo "scale=2; $n*3.281" | bc`
        ;;
        *)
                echo "wrong input"
        ;;
esac
echo "value of length after conversion $r"
