#!/bin/bash

###### check disk space ##############

hostname="$HOSTNAME"
war="10"
mailto="loki@lokilabs.ai"

path="$(df -h | grep -vE 'tmpfs' | grep 'root' | awk '{print $5}' | sed 's/%/ /g')"

  if [ $path -gt $war ]
  then 
      echo "the disk is in critical condition"
      echo "the info of the disk stored in /tmp/temp file"
      df -h | grep $path  >> /tmp/temp
  else
      echo "$hostname has available disk space "
  fi

value="$(cat /tmp/temp | wc -l )"
if [ $value -ge 1 ]
then
    echo "$hostname disk is critical" | mail -s "critical" root@lokilabs.ai < /tmp/temp
fi
