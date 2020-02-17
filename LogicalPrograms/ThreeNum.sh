declare -a array
echo "Enter the number of element"
read n
fillarray(){
for((i=0;i<n;i++))
do
read -p 'enter the value ' value 
array[$i]=$value
done
}
display(){
for((i=0;i<n;i++))
do
echo -e "${array[$i]} \c"
done
}
threeaddzero(){
for((i=0;i<n;i++))
do
	for((j=0;j<n;j++))
	    do
   		  for((k=0;k<n;k++))
	            do
                         z=$(( ${array[$i]}+ ${array[$j]}+ ${array[$k]} ))
                      if [ "$z" == 0 ]
			then
			   echo "Triplet value is ${array[$i]},${array[$j]},${array[$k]}"
				fi
                        done
                 done
done
}
fillarray
display
echo
threeaddzero
