#!/bin/bash

########## ststus of server ########
#1.how long server have up 

up="$(uptime | awk -F "," '{print $1}' | awk -F " " '{print$3" "$4}')"
time="$(uptime | awk -F "," '{print $1}' | awk -F " " '{print$1}')"
echo "the server up time is $up" 
echo "the server up from $time"
echo "#############################"

#2.system present date and time

pt="$(date)"
echo "server present date and time is $pt"
echo "###############################"

#3.server present load

load1="$(cat /proc/loadavg | awk -F " " '{print $1}')"
load2="$(cat /proc/loadavg | awk -F " " '{print $2}')"
load3="$(cat /proc/loadavg | awk -F " " '{print $3}')"

echo "server load averaqge for 5sec $load1"
echo "server load averaqge for 10sec $load2"
echo "server load averaqge for 15sec $load3"

