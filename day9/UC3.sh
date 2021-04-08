#!/bin/bash -x
WageperHour=20
partTimeHour=8
randomno=$((RANDOM%2))
if [ $randomno -eq 0 ]
then
        echo "Employee is absent"
        salary=0
else
        echo "Employee is Present"
        salary=$((partTimeHour*WageperHour))
fi
echo $salary
