#!/bin/bash

if [ $# != 1 ]; then
    echo "Error: it is not clear why you need not 1 parameter."
else

    sudo chmod +x print.sh
    sudo chmod +x info.sh

    export directory=$1

    if [[ ! (-d "$directory") || "$directory" == "" || ${directory: -1} != "/" ]]; then
        echo "Error: no such directory."
    else
        ./info.sh
    fi
fi