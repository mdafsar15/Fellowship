a=("$@")
b=${a[0]}
p=2
pw=$(awk -v x=$b -v y=$p 'BEGIN {print(x^y)}')
echo "$pw"
k=2
while [ "$k" -lt "$pw" ]
do
echo "$k"
k=$(awk -v x=$k -v y=2 'BEGIN {print(x*y)}')
done
