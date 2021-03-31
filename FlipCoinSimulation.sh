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
