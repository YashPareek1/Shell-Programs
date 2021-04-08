#! /bin/bash
headcount=0
totalcount=0
while [ $headcount -lt 11 ]
do
   if [ $(( RANDOM%2 )) -eq 0 ]
   then
        headcount=$(( headcount+1 ))
   fi
   totalcount=$(( totalcount+1 ))
done
echo "$totalcount"


