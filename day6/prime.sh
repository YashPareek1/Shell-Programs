#!/bin/bash

echo "enter no"
read a

flag=0

for (( i=2; i<= $a/2; i++ ))
do
        if [ $(($a%$i)) -eq 0 ]
        then
            echo no is not prime
            break
        else
            echo no is prime
        fi
done


