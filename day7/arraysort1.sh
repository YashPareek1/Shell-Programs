#! /bin/bash

declare -a random

counter=1
while [ $counter -le 10 ]
do
        random[$counter]=$((1 + RANDOM % 1000))
        counter=$(( counter + 1 ))
done
echo ${random[@]}


for (( i=0; i<11; i++ ))
do
        for (( j=0; j<10-i-1; j++ ))
        do
                if [ ${random[j]} -gt ${random[ $(( j+1 )) ]} ]
                then
                        temp=${random[j]}
                        random[$j]=${random[$(( j+1 ))]}
                        random[$(( j+1 ))]=$temp
                fi
        done
done

echo "sorted order"
echo ${random[@]}
echo ${random[2]}
echo ${random[9]}
