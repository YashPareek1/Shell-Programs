#!/bin/bash


read -p "GIVE THE FISRT NUMBER TO OPERATE       " number_one
read -p "GIVE THE SECOND NUMBER TO OPERATE      " number_two
read -p "GIVE THE THIRD NUMBER TO OPERATE       " number_three
        result1=$(( number_one + number_two * number_three ))
        echo "FIRST OF OPERATION RESULTED IN " $result1

        result2=$(( number_one % number_two + number_three ))
         echo "SECOND OPERATION RESULTED IN " $result2


        result3=$(( number_three + number_one / number_two ))
         echo "THIRD OPERATION RESULTED IN " $result3

       result4=$(( number_one * number_two + number_three ))
        echo "FOURTH OPERATION RESULTED IN" $result4


if [  $number_one -ge $number_two -a $number_one -ge $number_three ]
then
	echo number_one is greater
elif [ $number_two -ge $number_one -a $number_two -ge $number_three ]
then
	echo num2 is greater
else
	echo num3 is greater
fi




if [  $number_one -lt $number_two -a $number_one -lt $number_three ]
then
        echo number_one is smaller
elif [ $number_two -lt $number_one -a $number_two -lt $number_three ]
then
        echo num2 is smaller
else
        echo num3 is smaller
fi
