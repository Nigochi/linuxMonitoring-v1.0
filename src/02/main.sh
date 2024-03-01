#!/bin/bash
if [ $# != 0 ]
then
	echo "Error: it is not clear why you entered the parameters."
else
	sudo chmod +x print.sh
	sudo chmod +x info.sh
	echo "Do you want to write data to file? [Y/N]"
	read ans
	if [[ $ans == 'Y' || $ans == 'y' ]]
	then
		filename="$(date +%d_%m_%y_%H_%M_%S).status"
		./info.sh > $filename
	else
		./info.sh
	fi
fi
