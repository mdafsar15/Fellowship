echo "Enter the name"
read a
if ((${#a} >=3))
then
	echo "Hello $a, How are you?"
else
	echo "Invalid name"
fi
