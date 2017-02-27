#!/usr/bin/env sh

pac=$(checkupdates | wc -l)

if [[ "$pac" != "0" ]];
then
    echo " $pac";

    for i in 0
		do
			/home/s-adm/.config/polybar/aur.sh;
			#sleep 180;
		done
	#exit 0
else
    echo "";
fi

#pac=$(checkupdates | wc -l); if [[ "$pac" != "0" ]]; then echo " $pac"; fi
