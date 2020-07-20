#!/bin/bash -x
degtoFh () {
        f=$(($1*9/5 + 32))
        return $f
}
Fhtodeg () {
        f=$((($1-32)*5/9))
        return $f
}
echo -e "enter the your choice \n 1.Degree to Fahrenhiet \n 2.Fahrenhiet to Degree"
read ch
case $ch in
        1)
                echo "the value to convert"
                read v
                degtoFh $v
                ret=$?
                echo "the converted value is $ret"
        ;;
        2)
                echo "the value to convert"
                read v
                ftodeg $v
                ret=$?
                echo "the converted value is $ret"
        ;;
                *) echo "wrong input"
        ;;
esac

