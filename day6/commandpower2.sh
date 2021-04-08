#! /bin/bash 
read -p "Enter power of 2"  i
res=1
count=0
limit=256
while [ $i -ne $count ]
do
    res=$(expr $res \* 2 )
    count=$(expr $count + 1 )
done
if [ $res -gt $limit ]
then
     echo "exceeding the value of 256"
else
     echo "power of $i is $res"
fi
