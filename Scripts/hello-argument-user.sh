#!/bin/bash

echo "Argument Action"

echo "Hey! First user: $1, How are you?"
echo "Hey! Second user: $2, How are you?"

echo "All user: $*"
echo "All user: $@"

<<info
The collection of arguments in $* is treated as one
text string, whereas the collection of arguments in $@ is 
treated as separate strings.
info

echo "Number of arguments: $#"
