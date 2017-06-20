#!/bin/bash

ping 8.8.8.8 -c 1 > /dev/null 2>&1; exit_code=$?
time_stamp=$(date +"%Y%m%d-%H%M")

if [ $exit_code -ne 0 ]; then 
    (1>&2 echo "$time_stamp: failed with exit code $exit_code; restarting now")
    reboot
else
    echo "$time_stamp: ok"
fi
