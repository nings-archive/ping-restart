#!/bin/bash

ping google.com -c 1  # ping--no packets exit 1; good exit 0

if [ $? -ne 0 ]; then
	echo "[`date`] EXIT CODE $?, restarting..." >> ping-restart.log
	reboot
fi
