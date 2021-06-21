#!/bin/bash

user=`whoami`
date=`date`
printf "Welcome, ${user}. It's currently ${date} "
#~/.motd/services.sh
~/.motd/cpu.sh
#echo "System:"
#system_profiler SPSoftwareDataType | tail -n10 | cut -c 5- | lolcat
echo
