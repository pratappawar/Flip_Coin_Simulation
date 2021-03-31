#! /bin/bash 
echo "Welcome to flip coin Simulator"
#To Print Head and Tail 
Head=1
result=$((RANDOM%2))
if [ $result -eq $Head ]
   then
	echo "Head is Winner"
   else
	echo "Tail is Winner"
fi

#As a simulator, loop through Multiple times of flipping a coin and show number of times head and tail has won

#variable
HeadCount=0
TailCount=0

read -p "Enter the flip in Number" NoOfCoinFlip

for (( count=1; count<=NoOfCoinFlip; count++ ))
     do
	if [ $((RANDOM%2)) -eq $Head ]
	   then
		((HeadCount++))
	else
	       ((TailCount++))
	fi
     done
echo  "Head Count=" $HeadCount
echo  "Tail Count=" $TailCount

#Modify the earlier UC 2 to continue till either of them have won 21 times. Show if it’s a Win or Tie. If Win then who won and by how much

target_count=21
heads_count=0
tails_count=0
flips_count=0
while(( 1 ))
do
    (( flips_count++ ))
    echo -n "Flip-$flips_count is "
    toss=$(( RANDOM % 2 ))
    if(( toss == 0 ))
    then
        echo "Heads"
        (( heads_count++ ))
    else
        echo "Tails"
        (( tails_count++ ))
    fi
    if(( heads_count == target_count || tails_count == target_count ))
    then
        break
    fi 
done
echo "The Heads count is $heads_count and Tails Count is $tails_count"
if(( heads_count > tails_count ))
then
    echo "Heads won by $(( heads_count - tails_count ))"
elif(( tails_count > heads_count ))
then
    echo "Tails won by $(( tails_count - heads_count ))"
else    
    echo "Its tie"
fi

