#!/bin/bash -x

declare -a random
counter=0
while [ $counter -le 9 ]
do
        random[$counter]=$(( RANDOM % 900 + 100 ))
        counter=$(( counter + 1 ))
done
for(( i=0; i<=8; i++ ))
do
  for(( j=1; j<=9; j++ ))
  do
                if [ ${random[j]} -gt ${random[$(( j+1 )) ]} ]

                then

                        temp=${random[j]}

                        random[$j]=${random[$(( j+1 ))]}

                        random[$(( j+1 ))]=$temp

                fi
  done
done

echo "WE GOT THESE NUMBERS: ${random[@]}"
echo "THE SECOND LARGEST OF THEM WAS $second_largest " 
echo ${random[2]}
echo "THE SECOND SmALLEsT OF THEM WAS $second_smallest "
echo ${random[9]}
