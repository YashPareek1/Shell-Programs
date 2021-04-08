#! /bin/bash
read -p "Enter number" n
case $n in
1)
     echo "unit"
	;;
10)
     echo "ten"
	;;
100)
     echo "hundred"
	;;
1000)
     echo "thousand"
	;;
10000)
     echo "ten thousand"
	;;
*)
     echo "INVALID"
esac


