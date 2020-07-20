#!/bin/bash -x


echo "Welcome to Employmee wage calculation program"
WageperHr=20
isPartTime=2
isFulltime=1
isAbsent=0
empHrs=0
totalempHrs=0
totalworkingDays=0
function getWorkHrs() {
	checkemp=$1
	case $checkemp in
	        $isPartTime)
	                empHrs=4

	                ;;
	        $isFulltime)
	                empHrs=8

	                ;;
	        *)
	                empHrs=0

	                ;;
	esac
}
declare -A empdailyWage
while [ $totalempHrs -lt 100 -a $totalworkingDays -lt 20 ]
do
	((totalworkingDays++))
	getWorkHrs $(( RANDOM % 3 ))
	totalempHrs=$(($totalempHrs + $empHrs))
	empdailyWage[ "Day "$totalworkingDays ]=$(( $empHrs*$WageperHr ))
done
for i in "${!empdailyWage[@]}"
do
	echo -e $i"\t"${empdailyWage[$i]}
done
empTotalWage=$(( $totalempHrs*$WageperHr ))
echo "total wage is $empTotalWage"
