#!/bin/bash -x
echo enter a number
read num
a=1
for((i=1; i<=num; i++))
do
        a=$(( $a * $i))
        b=$a
done
echo $b
