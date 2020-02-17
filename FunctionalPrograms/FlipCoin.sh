head=0
tail=0
echo " Enter the times you have to flip the coin"
read t
if(($t<=0))
then
echo "Coin was not flipped"
else
while(($t>0))
do
r=0.$(($RANDOM % 10));
if (($(awk -v x=$r -v y=0.5 'BEGIN {print(x<y)}')))
then
head=$((head+1))
else
tail=$((tail+1))
fi
t=$((t-1))
done
fi
echo "Count of 'head' is $head"
echo "Count of 'tail'is $tail"
ph=$(( head/head+tail ))
pt=$(( tail/tail+head ))
echo "Percentage of head is $ph"
echo "Percentage of tail is $pt"
