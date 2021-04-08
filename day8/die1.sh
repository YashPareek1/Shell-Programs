#! /bin/bash
declare -A dice=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )
declare -A dice_name=([1]="ONE" [2]="TWO" [3]="THREE" [4]="FOUR" [5]="FIVE" [6]="SIX" )
storer=1
while [ ${dice[$storer]} -le 9 ]
do
        storer=$(( RANDOM %6 +1 ))
        dice[$storer]=$((dice[$storer] + 1 ))

done
echo ${dice[@]}
for arg in "${!dice[@]}"
do
    if [ "${dice[$arg]}" -eq 10 ]
    then
        echo "THE NUMBER THAT OCCURED MAXIMUM TIMES WAS :${dice_name[$arg]}"
    fi

done
less=${dice[1]}
for arg in "${dice[@]}"
do
    if [ "$arg" -le $less ]
    then
        less=$arg
    fi

done
for arg in "${!dice[@]}"
do
    if [ "${dice[$arg]}" -eq $less ]
    then
       echo "THE NUMBER THAT OCCURED MINIMUM TIMES WAS :${dice_name[$arg]}"
    fi

done
