#!/bash/bin -x
#a:
ConvInToFt=12
Inch=42
Feet=$(( $Inch/$ConvInToFt ))
echo "42 in is $Feet ft"
 #b:
Length=`awk 'BEGIN { print 0.350*60 }'`
Breadth=`awk 'BEGIN { print 0.350*40 }'`
Sqmeters=`echo "scale=4; $Length*$Breadth" | bc`
echo "rectangular plot of 60 feet X 40 feet in Sqmeters is $Sqmeters"
 #c:
Acres=`echo "scale=4; $Sqmeters/4046.86" | bc`
TotalArea=`echo "scale=4; $Acres*25" | bc`
echo "the area of 25 plots is $TotalArea acres"
