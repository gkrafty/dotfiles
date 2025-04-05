#!/bin/bash

user=`whoami`
date=`date`
printf "Welcome, ${user}. It's currently ${date} "
#~/.motd/services.sh
~/.motd/cpu.sh
#echo "System:"
#system_profiler SPSoftwareDataType | tail -n10 | cut -c 5- | lolcat
echo

##########################
#### Random MOTD
##########################
#echo
#export MOTD_CMD=(sed -n $((1+$RANDOM%`wc -l ~/.motd/motd-msg | cut -f 7 -d ' '`))p ~/.motd/motd-msg)
#echo "$($MOTD_CMD)"
sed -n $((1+$RANDOM%`wc -l < ~/.motd/motd-msg`))p ~/.motd/motd-msg
#echo
