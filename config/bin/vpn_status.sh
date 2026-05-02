#!/bin/bash

interface=$(ifconfig | grep tun0 | awk '{print $1}' | tr -d ":")

if [[ $interface = "tun0" ]]; then
	ip=$(ifconfig $interface | grep "inet " | awk '{print $2}')
	echo "%{A1:echo -n $ip | xclip -sel clip:}VPN%{F#ffffff} $ip%{F-}%{A}"
else
	echo "VPN%{F#aaaaaa} Desconectado%{F-}";
fi

