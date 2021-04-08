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
	
        if [ $result1 -ge $result2 -a $result1 -ge $result3 -a $result1 -ge $result4 ]
	then
        	echo "THE FIRST OPERATION RESULTED THE MAXIMUM VALUE"
	elif [ $result2 -ge $result1 -a $result2 -ge $result3 -a $result2 -ge $result4 ]
        then
                echo "THE SECOND OPERATION RESULTED THE MAXIMUM VALUE"
	elif [ $result3 -ge $result2 -a $result3 -ge $result1 -a $result3 -ge $result4 ]
	then
                echo "THE THIRD OPERATION RESULTED THE MAXIMUM VALUE"
	elif [ $result4 -ge $result2 -a $result4 -ge $result3 -a $result4 -ge $result1 ]
	then
                echo "THE FOURTH OPERATION RESULTED THE MAXIMUM VALUE"
        fi
	
	if [ $result1 -lt $result2 -a $result1 -lt $result3 -a $result1 -lt $result4 ]
	then
        echo "THE FIRST OPERATION RESULTED THE MINIMUM VALUE"
	elif [ $result2 -lt $result1 -a $result2 -lt $result3 -a $result2 -lt $result4 ]
	then
                echo "THE SECOND OPERATION RESULTED THE MINIMUM VALUE"
	elif [ $result3 -lt $result2 -a $result3 -lt $result2 -a $result3 -lt $result1 ]
	then
                echo "THE THIRD OPERATION RESULTED THE MINIMUM VALUE"
	elif [ $result4 -lt $result2 -a $result4 -lt $result3 -a $result4 -lt $result1 ]
	then
                echo "THE FOURTH OPERATION RESULTED THE MINIMUM VALUE"
	fi
