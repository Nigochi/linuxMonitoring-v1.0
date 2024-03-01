#!/bin/bash
export HOSTNAME=$(hostname)
# timedatectl set-timezone Europe/Moscow
export TIMEZONE=$(timedatectl | grep 'Time zone' | awk '{print $3, $4, $5, $6}')
export USER=$(whoami)
export OS=$(cat /etc/issue | awk '{print $1, $2, $3}')
export DATE=$(date | awk '{print $2, $3, $6, $4}')
export UPTIME=$(uptime -p | sed -r 's/^[u][p]//')
export UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
export IP=$(hostname -I)
export MASK=$(ifconfig enp0s8 | grep 'netmask' | awk '{print $4}')
export GATEWAY=$(ip route | grep 'default' | awk '{print $3}')
export RAM_TOTAL=$(free -m | grep 'Mem' | awk '{printf "%.3f GB", $2/1024}')
export RAM_USED=$(free -m | grep 'Mem' | awk '{printf "%.3f GB", $3/1024}')
export RAM_FREE=$(free -m | grep 'Mem' | awk '{printf "%.3f GB", $4/1024}')
export SPACE_ROOT=$(df -Th | grep '/$' | awk '{printf "%.2f MB", $3*1024}')
export SPACE_ROOT_USED=$(df -Th | grep '/$' | awk '{printf "%.2f MB", $4*1024}')
export SPACE_ROOT_FREE=$(df -Th | grep '/$' | awk '{printf "%.2f MB", $5*1024 }')
./print.sh


