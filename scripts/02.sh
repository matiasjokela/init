echo "User to delete:"
read username

check=$(who | cut -d ' ' -f 1 | grep $username)

if [ "$check" == "$username" ]; then
	sudo killall -u $username && deluser -rf $username
else
	echo "User doesn't exist or is not active"
fi

