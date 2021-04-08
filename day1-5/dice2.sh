#!/bin/bash -x

randomCheck2=$((RANDOM%6))
randomCheck1=$((RANDOM%6))

if [ $randomCheck1 -ge 1 ]
then
	 B=$randomCheck1
else
         B=6
fi

if [ $randomCheck2 -ge 1 ]
then
        A=$randomCheck2
else
        A=6
fi

Add=$(($A+$B))
echo $Add
