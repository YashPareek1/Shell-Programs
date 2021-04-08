#! /bin/bash 
function prime(){
flag=0
  for (( i=2; i<$1; i++ ))
do
   if [ $(( $1%i )) -eq 0 ]
   then
   flag = 1
   break
   fi
done
if [ $flag -eq 0 ]
then
    echo "prime"
else
    echo "not prime"
fi
}

function palindrome(){
if [ $n = $rev ]
then
     echo "Palindrome"
else
     echo "not Palindrome"
fi
}
read n1
pn=$( prime $n1 )
echo $pn
pd=$( palindrome $n1 )
echo $pd
