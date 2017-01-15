#!/bin/bash

ping google.com -c 1  # ping--no packets exit 1; good exit 0
code=$?

if [ "${code:0}" != "0" ]; then
	echo "[`date`] EXIT CODE $code, restarting..." >> ping-restart.log
	reboot
else
	echo "[`date`] EXIT CODE $code, OK" >> ping-restart.log
fi
