#!/bin/bash -x
declare -a fruits

fruits[0]="apple"
fruits[1]="10"
fruits[2]="banana"

echo ${fruits[@]}
echo ${fruits[2]}
echo ${#fruits[@]}
echo ${!fruits[@]}

for i in ${fruits[@]}
do 
	echo $i
done
unset fruits[1]   ////remove element
echo ${fruits[@]}
