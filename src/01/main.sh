#!/bin/bash
result=$1
regularExpression='^[+]?[0-9]+([.][0-9]+)?$'
if [[ $# = 0 ]]
then
	echo "Not enough arguments"
elif [[ $1 =~ $regularExpression ]]
then
	echo "Entered number"
elif [[ $# != 1 ]]
then
	echo "Too many arguments"
else
	echo $1
fi
