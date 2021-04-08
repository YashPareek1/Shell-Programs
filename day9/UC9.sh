#!/bin/bash -x
wageperhour=20
workhour=8
total=0
daily=0
read -p "How many day you want to work" n
for((i=1;i<=$n;i++))
do
        perday=$((wageperhour*workhour))
	day=$i
	echo $day
        daily=$(($daily+$perday))

done
echo "Total Wage i:- $daily"
echo "Daily Wage :- $perday"
