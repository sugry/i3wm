#!/bin/sh

if test -f "/home/s-adm/.config/polybar/weatmp"; then notify-send -u normal -h int:x:500 -h int:y:500 -t 4000 -i /home/s-adm/.config/polybar/icon/surgut.png "Погода в Сургуте" "$(cat /home/s-adm/.config/polybar/weatmp | head -1)";fi


