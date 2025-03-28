#!/bin/bash

echo "for-loop"

read -p "Till what value, you want to run the loop: " value

for(( num = 1 ; num <= $value ; num++ ))
do
	echo "Number: $num"
done
