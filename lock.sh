#!/bin/bash

icon="/tmp/lock-128.png"
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png "$icon" -gravity center
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
