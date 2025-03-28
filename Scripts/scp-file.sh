#!/bin/bash

echo "Secure Copy Protocol"

private-key=$1

src=$2
dest=$3

echo "SCP Started ..."

scp -i $1 $2 $3

echo "Completed."
