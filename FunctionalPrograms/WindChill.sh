a=("$@")
t=${a[0]}
v=${a[1]}
if (($t>50)) && ((120 < $v < 3))
then
pv=$(awk -v x=$v -v y=0.16 'BEGIN { print(x^y)}')
w=$(awk -v x=$t  'BEGIN { print(0.4275x-35.75)}')
wi=$(awk -v x=35.74 -v y=0.6215 'BEGIN { print(x+y)}')
win=$(awk -v x=$w -v y=$wi 'BEGIN { print(x+y)}')
wind=$(awk -v x=$win -v y=$pv 'BEGIN { print(x*y)}')
echo "Windchill value is $wind"
else
echo "Invalid Input"
fi
