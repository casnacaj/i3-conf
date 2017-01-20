#!/bin/bash

# shell scipt to prepend i3status with more stuff

i3status --config ~/.i3/.i3status.conf | while :
do
        read line
        KB=$(setxkbmap -query | awk '/layout/{print $2}')
        MEM=$(free -m | awk '/(Swap)|(Mem)/{printf "%s %d%% | ", $1, $3 * 100 / $2}')
        echo "$KB | $MEM$line" || exit 1
done
