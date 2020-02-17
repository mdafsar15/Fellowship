a=( "$@" )
v1=${a[o]}
v2=${a[1]}
x1=$(awk -v x=$v1 'BEGIN {print(x*x)}')
y1=$(awk -v x=$v2 'BEGIN {print (x*x)}')
sum=$(awk -v x=$x1 -v y=$y1 'BEGIN {print (x+y)}')
dis=$(awk -v x=$sum 'BEGIN {print sqrt(x)}')
echo "Euclidean Distance is $dis"
