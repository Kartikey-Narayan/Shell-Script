#!/bin/bash

echo "while-loop"

while true
do
	echo "1. Print - Yes"
	echo "2. Print - No"
	echo "3. Exit"

	read -p "Enter your choice: " choice

	if [ $choice -eq 1 ];
	then
		echo "Yes."
	elif [ $choice -eq 2 ];
	then
		echo "No."
	elif [ $choice -eq 3 ];
	then
		echo "Exiting ..."
		break
	else
		echo "Invalid selection."
	fi
done
