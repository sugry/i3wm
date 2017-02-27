#!/bin/bash

St="$(xinput list-props 13 | grep Enabled |	sed 's/Device Enabled (142):	//g')"

So='1'

#echo $St
#echo $So

if [ $St == $So ]; then
      xinput disable 13
      notify-send -u normal -t 2000 -i /home/s-adm/.config/polybar/icon/input-touchpad-symbolic.svg "X" "Touchpad off"
else
      xinput enable 13
      notify-send -u normal -t 2000 -i /home/s-adm/.config/polybar/icon/input-touchpad-symbolic.svg "O" "Touchpad on"
fi
 
