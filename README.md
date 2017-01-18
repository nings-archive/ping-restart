# ping-restart
Simple bash script. Pings google.com. 

If exit status for ping command is not 0 (i.e. the ping has somehow failed),

1. Log this in a log file ping-restart.log in the current working directory, `"$(pwd)/ping-restart.log"`
2. Reboot the machine with command `reboot`
