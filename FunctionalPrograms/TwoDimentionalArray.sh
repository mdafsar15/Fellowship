declare -A array
fillarray(){
for((i=0; i<3; i++))
do
	for((j=0; j<3; j++))
	do
	read -p 'enter the value' value
	array[$i,$j]=$value
	done
done
}
displayArray(){
for((i=0; i<3; i++))
do
	for((j=0; j<3; j++))
	do
	echo -e "${array[$i,$j]} \c"
	done
echo
done
}
fillarray

displayArray
