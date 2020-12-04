#! /bin/bash
# cars.sh
# Casey Counts
Input="0"
while [ "$Input" -ne "3" ]
do
        echo "Would you like to: 1) Enter a car 2) List cars 3) Exit ?"
        read -r Input
        case "$Input" in "1")
                echo "Enter the cars year"
                read -r YEAR
                echo "Enter the cars make"
                read -r MAKE
                echo "Enter the cars model"
                read -r MODEL
                NEWCAR="$YEAR:$MAKE:$MODEL"
                echo "$NEWCAR" >> My_old_cars;
        esac
        case "$Input" in "2")
                sort My_old_cars
        esac
        case "$Input" in "3")
                echo "Goodbye";
        esac
done
