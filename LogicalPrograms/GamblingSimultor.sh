echo "Enter the stake, goal and number of times"
read stake
read goal
read n
win=0
los=0
while(($stake>0))&&(($stake!=$goal))&&(($n>0))
do
	echo "Enter the bet amount"
	read bet
	if (($bet>$stake))
	then
		echo "bet is more than stake"
		continue
	fi
	r=0.$(($RANDOM % 10))
	if (($(awk -v x=$r -v y=0.5 'BEGIN {print(x>y)}')))
	then
		echo "You won the bet"
		stake=$((stake+bet))
		win=$((win+1))
	else
		echo "You lost the bet"
		stake=$((stake-bet))
		los=$((los+1))
	fi
	echo "Stake: $stake"
	n=$((n-1))
done
echo "No. of wins $win"
echo "No. of loss $los"
	
	
