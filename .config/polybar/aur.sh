#!/bin/bash

pac=$(checkupdates | wc -l)
aur=$(yaourt --stats | grep обновления | sed 's/Пакеты, требующие обновления:  //g')

check=$((pac + aur))
if [[ "$check" != "0" ]];
then
    notify-send -u normal -i /home/s-adm/.config/polybar/icon/software-update-available-symbolic.svg "ДОСТУПНЫ ОБНОВЛЕНИЯ" "$pac в официальном репозитории и $aur в AUR";
fi

