#!/bin/bash
echo "User to delete:"
read username

check=$(who | cut -d ' ' -f 1 | grep $username)

if [ "$username" == root ]; then
	echo "Let's not delete root"
elif [ "$check" == "$username" ]; then
	sudo pkill -u $username && sudo userdel -rf $username
else
	echo "User doesn't exist or is not active"
fi


# adduser testi
# cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}$' | cut -d: -f1