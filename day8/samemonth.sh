#!/bin/bash

declare -a array
declare -A dice_dict
declare -A transformational_dict=([0]="JAN,92" [1]="FEB,92" [2]="MARCH,92" [3]="APRIL,92" [4]="MAY,92"
[5]="JUNE,92" [6]="JULY,92" [7]="AUGUST,92" [8]="SEPT,92" [9]="OCT,92" [10]="NOV,92" [11]="DEC,92"
[12]="JAN,93" [13]="FEB,93" [14]="MAR,93" [15]="APRIL,93" [16]="MAY,93" [17]="JUNE,93" [18]="JULY,93"
[19]="AUGUST,92" [20]="SEPT,93" [21]="OCT,93" [22]="NOV,93" [23]="DEC,93" )
for (( i=0; i<50; i++ ))
do
        storer=$(( RANDOM % 24 ))
        dice_dict[$storer]=$(( dice_dict[$storer] + 1 ))
done
a_c=0
for count in ${!dice_dict[@]}
do
        if [ ${dice_dict[$count]} -gt 1 ]
        then
                temporary_storer=$count
                array[$a_c]=${transformational_dict[$temporary_storer]}
                a_c=$(( a_c + 1 ))
        fi
done


echo "THE MONTHS WHERE PEOPLE HAVE COMMON BIRTHDAYS :${array[@]}"
