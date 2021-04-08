#!/bin/bash -x
WageperHour=20
fullTimeHour=8
randomno=$((RANDOM%2))
case $randomno in
	0)
        echo "Employee is absent"
        salary=0
	;;
	1)
        echo "Employee is Present"
        salary=$((fullTimeHour*WageperHour))
	;;
esac
echo "Salary :-$salary"
