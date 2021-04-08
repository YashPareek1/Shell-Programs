#!/bin/bash -x
counter=0
fruits[((counter++))]="Apple"
fruits[((counter++))]="Banana"
fruits[((counter++))]="Orange"

echo ${fruits[@]}
for i in ${fruits[@]}
do
	echo $i
done
