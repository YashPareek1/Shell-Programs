#!/bin/bash
ispresent=1
isabsent=2
emprateperhr=20

randomCheck=$((RANDOM%3))
if [ $ispresent -eq $randomCheck ]
then
	salary=$(($emprateperhr*8))
        echo "employee is present"
        echo $salary
elif [ $isabsent -eq $randomCheck ]
then
        echo "employee is absent"

else
        echo "emp is part present"
	salary=$(($emprateperhr*4))
	echo $salary

fi

