#!/bin/bash

###### check disk space ##############

hostname="$HOSTNAME"
war="20"
mailto="loki@lokilabs.ai"

path="$(df -h | grep -vE 'tmpfs' | grep 'root' | awk '{print $4}' | sed 's/G/ /g')"

  if [ $path -lt $war ]
  then 
      echo "the disk is in critical condition"
      echo "the info of the disk stored in /tmp/temp1 file"
      df -h | grep $path  >> /tmp/temp1
  else
      echo "$hostname has available disk space "
  fi

value="$(cat /tmp/temp1 | wc -l )"
if [ $value -ge 1 ]
then
    echo "$hostname disk is critical" | mail -s "critical" root@lokilabs.ai < /tmp/temp1
fi

#rm -rf /tmp/temp1
