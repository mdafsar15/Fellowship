echo "Enter the year"
read y
if(($y%400==0))
then
	echo "$y is Leap Year"
elif (($y%4==0)) && (($y%100!=0))
then
	echo "$y is Leap Year"
else
	echo "$y is not a Leap Year"
fi
