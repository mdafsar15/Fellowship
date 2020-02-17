echo "Enter the value a"
read a
echo "Enter the value b"
read b
echo "Enter the value c"
read c
delta=$((4*$a*$c-$b*$b))
echo "Value of delta $delta"
rootd=$(awk -v x=$delta 'BEGIN {print sqrt(x)}')
echo "value of root delta $rootd"
val1=$((2*$a))
val2=$(awk -v x=$b -v y=$rootd 'BEGIN {print (y-x)}')
val3=$(awk -v x=$b -v y=$rootd 'BEGIN {print (-x-y)}')
root1=$(awk -v x=$val2 -v y=$val1 'BEGIN {print (x/y)}')
root2=$(awk -v x=$val3 -v y=$val1 'BEGIN {print (x/y)}')
echo "Value of root value $root1"
echo "Value of root value $root2"
x1=$(awk -v x=$root1 -v y=$root2 'BEGIN {print (x*y)}')
x2=$(awk -v x=$a -v y=$x1 'BEGIN {print (x*y)}')
x3=$(awk -v x=$b -v y=$root1 'BEGIN {print (x*y)}')
quad=$(awk -v x=$x2 -v y=$x3 'BEGIN {print (x+y)}')
quadratic=$(awk -v x=$quad -v y=$c 'BEGIN {print (x+y)}')
echo "Value of Quadratic is $quadratic"
