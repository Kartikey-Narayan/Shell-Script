#!/bin/bash

echo "Case Statement"

echo "1. Add User"
echo "2. Delete User"
echo "3. Check User"

read -p "Enter your choice: " choice

case $choice in
	1) 
		echo "Account creation started ..."

		read -p "Enter the username: " username
		read -s -p "Enter the password: " password

		if sudo useradd -m $username -s /bin/bash > /dev/null;
		then
			echo -e "$password\n$password" | sudo passwd $username > /dev/null
			echo "Processing ..."
			echo "Account creation done for user: $username."
		else
			echo -e "Failed to create user.\nThe user might already exist or you may not have permission."
			exit 1
		fi
		;;
	2) 
		echo "Account deletion started ..."

		read -p "Enter the username which you want to delete: " username

		if sudo userdel $username > /dev/null;
		then
			echo "Processing ..."
			echo "Account deletion done for user."
		else
			echo -e "Failed to delete user.\nThe user might not exist or you may not have permission."
			exit 1;
		fi
		;;
	3)
		echo "Account with username search starting ..."

		read -p "Enter the username which you want to search: " username

		if [ $(cat /etc/passwd | grep $username | wc | awk '{ print $1 }') -eq 0 ];
		then
			echo "User does not exist."
		else
			echo "User exist with username: $username"
		fi
		;;
	*)
		echo "Invalid selection."
		;;
esac
