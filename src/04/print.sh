#!/bin/bash
./color.sh "HOSTNAME =" $HOSTNAME
./color.sh "TIMEZONE =" $TIMEZONE
./color.sh "USER =" $USER
./color.sh "OS =" $OS
./color.sh "DATE =" $DATE
./color.sh "UPTIME =" $UPTIME
./color.sh "UPTIME_SEC =" $UPTIME_SEC
./color.sh "IP =" $IP
./color.sh "MASK =" $MASK
./color.sh "GATEWAY =" $GATEWAY
./color.sh "RAM_TOTAL =" $RAM_TOTAL
./color.sh "RAM_USED =" $RAM_USED
./color.sh "RAM_FREE =" $RAM_FREE
./color.sh "SPACE_ROOT =" $SPACE_ROOT
./color.sh "SPACE_ROOT_USED =" $SPACE_ROOT_USED
./color.sh "SPACE_ROOT_FREE =" $SPACE_ROOT_FREE

declare -a colors=(white red green blue purple black)

echo -e

if [[ $flag_1 == 1 ]]; then 
    echo "Column 1 background = default (green)"
else
    echo "Column 1 background =" $param_1 "(${colors[$param_1-1]})"
fi

if [[ $flag_2 == 1 ]]; then 
    echo "Column 1 font color = default (purple)"
else
    echo "Column 1 font color =" $param_2 "(${colors[$param_2-1]})"
fi

if [[ $flag_3 == 1 ]]; then 
    echo "Column 2 background = default (blue)"
else
    echo "Column 2 background =" $param_3 "(${colors[$param_3-1]})"
fi

if [[ $flag_4 == 1 ]]; then 
    echo "Column 2 font color = default (black)"
else
    echo "Column 2 font color =" $param_4 "(${colors[$param_4-1]})"
fi
