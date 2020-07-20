#!/bash/bin -x
No1=`echo $(( RANDOM % 6 + 1 ))`
No2=`echo $(( RANDOM % 6 + 1 ))`
echo $((No1 + No2))
