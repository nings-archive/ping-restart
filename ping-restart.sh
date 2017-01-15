#!/bin/bash

ping google.com -c 1  # ping--no packets exit 1; good exit 0
$code=$?

if [ "${code:0}" -ne 0 ]; then
	echo "[`date`] EXIT CODE $?, restarting..." >> ping-restart.log
	reboot
fi
