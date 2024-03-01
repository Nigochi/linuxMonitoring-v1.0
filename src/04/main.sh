#!/bin/bash

sudo chmod +x print.sh
sudo chmod +x info.sh
sudo chmod +x color.sh

function set_default () {
    flag=$1
    for (( i=1; i <= 4; i++ ))
do
    if [[ $[param_$i] != [1-6] || $flag ]]; then
        let "param_$i=$[default_param_$i]"
        let flag_$i=1
    fi
done
}

source color.conf

export param_1=$column1_background
export param_2=$column1_font_color
export param_3=$column2_background
export param_4=$column2_font_color

export default_param_1=3
export default_param_2=5
export default_param_3=4
export default_param_4=6

export flag_1=0
export flag_2=0
export flag_3=0
export flag_4=0

set_default

set_default_flag=0

if [[ $param_1 == $param_2 || $param_3 == $param_4 ]]; then
    echo "Error: the background and font color are the same. Default colors set."
    set_default_flag=1
    set_default set_default_flag
fi

for (( i=1; i <= 4; i++ ))
do
    if [[ $[param_$i] != [1-6] ]]; then
        echo "Error: parameters are only 1, 2, 3, 4, 5 or 6."
        set_default_flag=1
        set_default set_default_flag
    fi
done

./info.sh