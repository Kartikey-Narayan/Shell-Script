#!/bin/bash

<<info

This script will use for backup whole data 
which are in /home/ubuntu/script.

info

echo "Starting the backup ..."

dest=$1
src=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

filename=backup-$timestamp.zip
echo "filename: $filename"

echo "Processing ..."

zip -r $dest/$filename $src

aws s3 sync $dest s3://tws-batch-9-backup

echo "Backup completed in local and also updated to AWS S3 bucket."
