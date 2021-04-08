#!/bin/bash -x
echo 	`ls *.txt`
for file in `ls *.txt`
do
rm $file
done
