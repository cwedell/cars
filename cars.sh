#! /bin/bash
#! cars.sh
#! Colton Wedell
continue=1
echo "Welcome to the old cars inventory!"
while [ "$continue" -eq 1 ]
do
	echo "1. Enter a car"
	echo "2. View the list of cars"
	echo "3. Quit"
	read choice
	case $choice in
		1*)
			echo "Please enter the year:"
			read year
			echo "Please enter the make:"
			read make
			echo "Please enter the model:"
			read model
			echo "$year:$make:$model" >> My_old_cars;;
		2*)
			sort -n My_old_cars;;
		3*)
			echo "Goodbye"
			continue=0
	esac
done
