#!/bin/bash

export START=$(date +%s%N)
export DIR_NUM=$(sudo find $directory -type d | wc -l)
export DIR_TOP=$(sudo find $directory -printf "%s %p\n" -exec du -h {} + | head -5 | sort -rh | awk -F '.' '{print $0 " " $NF}' | awk '{print NR " - " $2 ", " $1}')
export FILE_NUM=$(sudo find $directory -type f | wc -l)
export CONF_NUM=$(sudo find $directory -type f -name "*.conf" | wc -l)
export TEXT_NUM=$(sudo find $directory -type f -name "*.txt" | wc -l)
export EXE_NUM=$(sudo find $directory -executable -type f | wc -l)
export LOG_NUM=$(sudo find $directory -type f -name "*.log" | wc -l)
export ARC_NUM=$(sudo find $directory -type f | grep -c -e .zip -e .rar -e .sit -e .7z)
export SYM_NUM=$(sudo find $directory -type l | wc -l)
export FILE_TOP=$(sudo find $directory -type f -printf "%s %p\n" -exec du -h {} + | sort -rh  | head -10 | awk -F '.' '{print $0 " " $NF}' | awk '{print NR " - " $2 ", " $1 ", " $3}')
export EXE_TOP=$(sudo find $directory -type f -printf "%s %p\n" -executable -exec md5sum {} \; | sort -rh | head -10 | awk -F '.' '{print $0 " " $NF}' | awk '{print NR " - " $2 ", " $3 ", " $1}')

./print.sh