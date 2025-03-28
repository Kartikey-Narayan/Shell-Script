#!/bin/bash

echo "Starting the account creation ..."

read -p "Enter the username: " username
read -s -p "Enter the password: " password

if sudo useradd -m $username -s /bin/bash > /dev/null;
then
	echo -e "$password\n$password" | sudo passwd $username > /dev/null
	echo "Processing ..."
	echo "Account creation done for user: $username."
else
	echo -e "Failed to create user.\nThe user might already exist or you may not have permission."
    exit 1;
fi

echo "---+++===+++---"

echo "Starting the account deletion ..."

if sudo userdel $username > /dev/null;
then
	echo "Processing ..."
	echo "Account deletion done for user."
else
	echo -e "Failed to delete user.\nThe user might not exist or you may not have permission."
	exit 1;
fi
