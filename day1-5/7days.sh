#!/bin/bash -x
read -p "Enter number" n
if [ $n = 1 ]
then
     echo "SUNDAY"
elif [ $n =  2 ]
then
     echo "MONDAY"
elif [ $n = 3 ]
then
     echo "TUESDAY"
elif [ $n = 4 ]
then
     echo "WEDNESDAY"
elif [ $n = 5 ]
then
     echo "THURSDAY"
elif [ $n = 6 ]
then
     echo "FRIDAY"
elif [ $n = 7 ]
then
     echo "SATURDAY"
else
     echo "INVALID"
fi
