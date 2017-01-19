#!/bin/bash

ping google.com -c 1  # ping--no packets exit 1; good exit 0
code=$?

if [ "${code:0}" != "0" ]; then
	echo "$(date +"%d %b %r") | $(uptime -p) | Exit ${code}. Restarting..." >> "$(pwd)/ping-restart.log"
	shutdown -r now
#else
#      	echo "$(date) EXIT CODE $code, OK" >> "$(pwd)/ping-restart.log"
fi
