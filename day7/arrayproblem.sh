#!/bin/bash

declare -a random
counter=0
while [ $counter -le 9 ]
do
        random[$counter]=$(( RANDOM % 900 + 100 ))
        counter=$(( counter + 1 ))
done
comparer=0


largest=${random[0]}
second_largest=${random[0]}
second_comparer=0
        while [ $comparer -le 9 ]
        do
                if [ ${random[$comparer]} -ge $largest ]
                then
                        largest=${random[$comparer]}
                fi
                comparer=$(( comparer + 1 ))
        done
while [ $second_comparer -le 9 ]
do
        if [ ${random[$second_comparer]} -lt $largest -a ${random[$second_comparer]} -gt $second_largest ]
        then
                second_largest=${random[$second_comparer]}
        fi
        second_comparer=$(( second_comparer + 1 ))
done
comparer=0
second_comparer=0
smallest=${random[0]}
second_smallest=${random[0]}
while [ $comparer -le 9 ]
        do
                if [ ${random[$comparer]} -le $smallest ]
                then
                        smallest=${random[$comparer]}
                fi
                comparer=$(( comparer + 1 ))
        done
while [ $second_comparer -le 9 ]
do
         if [ ${random[$second_comparer]} -gt $smallest -a ${random[$second_comparer]} -le $second_smallest ]
        then
                second_smallest=${random[$second_comparer]}
        fi
        second_comparer=$(( second_comparer + 1 ))
done


echo "WE GOT THESE NUMBERS: ${random[@]}"
echo "THE LARGEST OF THEM WAS $largest "
echo "THE SECOND LARGEST OF THEM WAS $second_largest "
echo "THE SMALLEST OF THEM WAS $smallest"
echo "THE SECOND SmALLEsT OF THEM WAS $second_smallest "
