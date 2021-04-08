#!/bin/bash

read -p "FOR WHAT NUMBER DO YOU WANT HARMONIC PROGRESSION       " progressor
for (( count_variable=1; count_variable <= ( progressor - 1 ); count_variable++ ))
do
        echo -n "1/$count_variable + "
        if [ $count_variable -eq $(( progressor -1 )) ]
        then
                echo "1/$progressor"
                final_taker=$progressor
        fi
done
echo -e "\n THE FINAL TERM IS " "1/$final_taker"
