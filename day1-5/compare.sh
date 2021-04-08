#!/bin/bash
echo "input a"
read var1
echo "input b"
read var2
if [ $var1 -ge $var2 ]
then
    echo "var1 is greater or equal to var2"
else
    echo "var2 is greater"
fi
