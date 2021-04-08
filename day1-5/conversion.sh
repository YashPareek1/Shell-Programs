#! /bin/bash -x

read -p "Lenght to be converted to feet" lengthininches
twopointfive=$(( 5 / 2 ))
echo $lengthininches

lengthinfeet=$(( lengthininches / 12 ))
echo $lengthinfeet

lengthof60feet=60
lengthof40feet=40

lengthininches60=$(( lengthof60feet / 12 ))
lengthininches40=$(( lengthof40feet / 12 ))

lengthincentimeters60=$(( lengthof60feet * twopointfive ))
lengthincentimeters40=$(( lengthof40feet * twopointfive ))

lengthinmeters60=$(( lengthincentimeters60 / 100 ))
lengthinmeters40=$(( lengthincentimeters40 / 100 ))

areaof40x60=$(( lenghtinmeters60*lengthinmeters40 ))
echo $areaof40x60
