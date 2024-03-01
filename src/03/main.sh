#!/bin/bash
if [ $# != 4 ]
then
	echo "Error: it is not clear why you entered not 4 parameters."
else
	sudo chmod +x print.sh
	sudo chmod +x info.sh
	sudo chmod +x color.sh
	export param_1=$1
	export param_2=$2
	export param_3=$3
	export param_4=$4
	flag=0
	for (( i=1; i <= 4; i++))
	do
		if [[ $[param_$i] < 1 || $[param_$i] > 6 ]]
		then
			echo "Error: parameters are only 1, 2, 3, 4, 5 or 6."
			flag=1
		fi
	done
	if [[ $param_1 == $param_2 || $param_3 == $param_4 ]]
	then
		echo "Error: the background and font color are the same. Call the script again."
		flag=1
	fi
	if [[ $flag == 0 ]]
	then
		./info.sh
	fi
fi
