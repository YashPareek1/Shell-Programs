#!/bin/bash -x
WageperHour=20
fullTimeHour=8
randomno=$((RANDOM%2))
if [ $randomno -eq 0 ]
then
	echo "Employee is absent"
	salary=0
else
	echo "Employee is Present"
	salary=$((fullTimeHour*WageperHour))
fi
echo $salary
