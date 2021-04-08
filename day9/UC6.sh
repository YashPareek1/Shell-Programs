#!/bin/bash -x
workdaypermonth=20
WageperHour=20
fullTimeHour=8
hour=0
day=0
while [[ $hour -le 100 || $day -eq 20 ]]
do
	random=$((RANDOM%2))
	case $random in 
		1)
		echo "Employee is Present"
		salary=$((WageperHour*fullTimeHour))
		echo "Salary is :-$salary"
		if [ $hour -lt 100 ]
		then
		hour=$((hour+4))
		echo "Hour is :-$hour"
		fi
		hour=$((hour+4))
		day=$((day+1))

		echo  "Day is:-$day"
		;;
	esac
done
