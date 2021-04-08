#!/bin/bash 
echo inches to feet press 1
echo feet to inches press 2
echo feet to meter press 3
echo meter to feet press 4
a=3.28
read -p "enter data " n
read -p "enter no of operation to perform" no
case $no in
	1)
	lengthinfeet=$(( $n / 12 ))
	echo $lengthinfeet
	;;
	2)
	lengthininches=$(( $n * 12 ))
	echo $lengthininches
	;;
	3)
	lengthinmeter=`awk "BEGIN{print $n*$a}"`
	echo $lengthinmeter
	;;
	4)
	lengthinfeet=`awk "BEGIN{print $n/$a}"`
	echo $lengthinfeet
	;;
	*)
	 echo  invalid
	esac

