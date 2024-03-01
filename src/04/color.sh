#!/bin/bash

header=$1
value=$2

white_t="\033[97m"
red_t="\033[91m"
green_t="\033[92m"
blue_t="\033[94m"
purple_t="\033[95m"
black_t="\033[30m"

white_b="\033[107m"
red_b="\033[101m"
green_b="\033[102m"
blue_b="\033[104m"
purple_b="\033[105m"
black_b="\033[40m"

end="\033[0m"

function text_color () {
    text_c=$1
    if [[ $text_c == 1 ]]; then
        echo $white_t
    elif [[ $text_c == 2 ]]; then
        echo $red_t
    elif [[ $text_c == 3 ]]; then
        echo $green_t
    elif [[ $text_c == 4 ]]; then
        echo $blue_t
    elif [[ $text_c == 5 ]]; then
        echo $purple_t
    elif [[ $text_c == 6 ]]; then
        echo $black_t
    fi
}

function back_color () {
    back_c=$1
    if [[ $back_c == 1 ]]; then
        echo $white_b
    elif [[ $back_c == 2 ]]; then
        echo $red_b
    elif [[ $back_c == 3 ]]; then
        echo $green_b
    elif [[ $back_c == 4 ]]; then
        echo $blue_b
    elif [[ $back_c == 5 ]]; then
        echo $purple_b
    elif [[ $back_c == 6 ]]; then
        echo $black_b
    fi
}

function print_header () {
    echo $(text_color $param_1) 
    echo $(back_color $param_2)
}

function print_value () {
    echo $(text_color $param_3)
    echo $(back_color $param_4)
}

echo -e $(print_header)$header$(print_value)$value$end
