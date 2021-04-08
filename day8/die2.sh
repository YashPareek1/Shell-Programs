#!/bin/bash -x

declare -A dict

while [[ $die1 -lt 10 && $die2 -lt 10 && $die3 -lt 10 && $die4 -lt 10 && $die5 -lt 10 && $die6 -lt 10 ]]
do
die=$((1 + RANDOM%6))

if [ $die -eq 1 ]
then
        ((die1++))
        dict[1]=$die1

elif [ $die -eq 2 ]
then
        ((die2++))
	dict[2]=$die2
	
elif [ $die -eq 3 ]
then
        ((die3++))
	dict[3]=$die3
elif [ $die -eq 4 ]
then
        ((die4++))
	dict[4]=$die4
elif [ $die -eq 5 ]
then
        ((die5++))
	dict[5]=$die5
elif [ $die -eq 6 ]
then
        ((die6++))
	dict[6]=$die6
fi
done
echo ${dict[@]}
min=${dict[1]}
max=${dict[1]}
for key in "${!dict[@]}"
do
	if [ ${dict[$key]} -le $min ]
	then
		min=${dict[$key]}
		min_key=$key
	fi
done
for key in "${!dict[@]}"
do
	if [ ${dict[$key]} -ge $max ]
	then
		max=${dict[$key]}
		max_key=$key
	fi
done
echo "Number $max_key reach Maximun times is:- $max"
echo "Number $min_key reach Minimun times is:- $min"

