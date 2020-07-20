#!/bash/bin -x
count=0
while [ $count -lt 5 ]
do
	sum=`expr $sum + $((RANDOM % 10 +10))`
	count=`expr $count + 1`
done
echo "the sum of numbers is $sum"
echo "the average of numbers is $(($sum / $count))"
