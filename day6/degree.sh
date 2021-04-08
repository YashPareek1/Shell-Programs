#! /bin/bash
function d2f(){
        temp=$((($c*9/5)+32))
        echo "Temperature in degree is $temp F"
}
function f2d(){
        temp=$((($f-32) * 5/9))
        echo "Temperature in Celcius is $temp C"
}
echo -ne "1.Celcius to degree \n2.Degree to Celcius \nChoice is yours:"
read choice
case $choice in
1)
        echo -ne "Enter Degree Celcius Temperature:"
        read c
        d2f $c
        ;;
2)
        echo "Enter degree Farhenite Temperature:"
        read f
        f2d $f
esac
