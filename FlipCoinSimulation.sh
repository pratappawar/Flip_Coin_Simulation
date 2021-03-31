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
