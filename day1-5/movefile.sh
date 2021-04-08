#!/bin/bash -x
touch abc.txt xyz.txt def.txt
for file in 'ls*.txt'
do
 folderName='echo $file | awk -F.'{print $1}''
 echo $folderName
 if[ -d $folderName ]


 rm -R $folderName
 fi
 mkdir $folderName
 mv $file $folderName
 done
echo 'ls*/'



