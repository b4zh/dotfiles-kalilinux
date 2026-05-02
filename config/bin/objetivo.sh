#!/bin/bash

if [[ -s ~/.config/bin/target ]]; then
	#ip_objetivo=$(cat ~/.config/bin/target | awk '{print $1}')
	#nombre_objetivo=$(cat ~/.config/bin/target | awk '{print $2}')
	#echo -n "$ip_objetivo - $nombre_objetivo"
	echo -n $(cat ~/.config/bin/target)
else
	echo "%{F#aaaaaa}Sin objetivo%{F-}"
fi
