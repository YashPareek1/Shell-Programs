#!/bin/bash
read -p "Enter a year" y
if [ $(($y%4)) -eq 0 ]
then
	echo year is leap
elif [ $(($y%100)) -eq 0 ]
then
	echo year is leap
else
	echo year is not leap
fi
