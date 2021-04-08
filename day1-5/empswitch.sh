#!/bin/bash -x
ispresent=0
ispartime=1
isabsent=2

randomCheck=$((RANDOM%3))
emprate=20

        case $randomCheck in
                0) echo "employee is present fulltime"
		   salary=$(($emprate*8))
                        ;;
                1) echo "employee is part time present"
		   salary=$(($emprate*4))
                        ;;
                2) echo "employee is absent"
                        ;;
        esac



