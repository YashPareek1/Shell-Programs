#!/bin/bash
counter=0
echo "enter 3 value"
for (( i=0; i<3; i++))
do
 read -a n
 array[((counter++))]=$n
done
tot=0
for i in ${array[@]}; 
do
  let tot+=$i
done
echo "Total: $tot"

