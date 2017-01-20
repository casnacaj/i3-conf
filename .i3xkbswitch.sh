#!/bin/bash

KB=$(setxkbmap -query | awk '/layout/{print $2}')

if [ "$KB" = "us" ]; then
setxkbmap -layout cz -variant qwerty
else
setxkbmap -layout us
fi;
