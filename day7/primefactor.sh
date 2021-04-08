#!/bin/bash

declare -a array

read -p "Enter a number" num

for (( i=2; i<=num; i++ ))
do
    while [ $((num%$i)) == 0 ]
    do
        array[$i]=$(( array[$i]+1 ))
        num=$((num/$i))
    done
done
echo ${!array[@]}
