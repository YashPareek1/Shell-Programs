#!/bin/bash -x
touch abc.log.1 xyz.log.1 def.log.1
echo 'ls*.log.1'
for file in 'ls*.log.1'
do
  folder='echo $file | awk -F. '{print $1}' '
  date='date + "%d%m%y"'
  folderName='echo $folder-$date.log'
  if[-d $folderName]
  then
  rm -R folderName
  fi
  touch $folderName
  rm $file
  done
  echo 'ls*.log'
