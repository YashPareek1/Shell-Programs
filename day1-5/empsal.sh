#!/bin/bash
ispresent=1
empRatePerHr=20
empWorkingHrs=8
randomCheck=$((RANDOM%2))
if [ $ispresent -eq $randomCheck ]
then
     echo "employee is present"
     salary=$(($emprateperhr*$empWorkingHrs))
else
     echo "employee is absent"
     salary=0
fi

