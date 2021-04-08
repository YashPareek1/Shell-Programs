#!/bin/bash
read -p "WHICH YOU WANT ME TO SPELL" number_value
case $number_value in
        1)
                echo "THE NUMBER IS ONE ! "
        ;;

        2)
                echo "THE NUMBER IS TWO !"
        ;;

        3)
                echo "THE NUMER IS THREE !"
        ;;

        4)
                echo "THE NUMBER IS FOUR !"
        ;;

        5)
                echo "THE NUMBER IS FIVE !"
        ;;

        6)
                echo "THE NUMBER IS SIX !"
        ;;

        7)
                echo "THE NUMBER IS SEVEN !"
        ;;

        8)
                echo "THE NUMBER IS EIGHT !"
        ;;

        9)
                echo "THE NUMBER IS NINE !"
        ;;

        *)
                echo "TYPE A SINGLE DIGIT NUMBER !"
        ;;
	esac
