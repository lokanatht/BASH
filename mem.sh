#!/bin/bash

###### check disk space ##############

hostname="$HOSTNAME"
war="40"
mailto="loki@lokilabs.ai"

path="$(free | grep 'Mem' | awk '{print $3/$2 * 100.0}' | awk -F "." '{print $1}')"

  if [ $path -gt $war ]
  then 
      echo "the memory is in critical condition"
      echo "the info of the memory  stored in /tmp/temp2 file"
      echo "$(free)"  >> /tmp/temp2
  else
      echo "$hostname has available memory "
  fi

value="$(cat /tmp/temp2 | wc -l )"
if [ $value -ge 1 ]
then
    echo "$hostname memory is critical" | mail -s "critical" loki@lokilabs.ai < /tmp/temp
fi
