#!/usr/bin/env sh

notify-send -u normal -t 15000 -i /home/s-adm/.config/polybar/icon/view-app-grid-symbolic.svg "Оперативная память" "$(cat /proc/meminfo | head -5)"
