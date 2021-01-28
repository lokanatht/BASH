#!/bin/bash

######## memory utilzation warning ############

war="50"

echo  "top 10 memory utilization processes:"
echo "$(top | head -n 17 | tail -n 10)"

mem="$(top -b -n1 | grep 'Mem' | head -n 1 | awk '{print $8/$4 * 100}' | awk -F "." '{print $1}')"
echo "$mem"
if [ $mem -gt $war ]
then 
    echo "memory usage is critical"
    echo "the inforamtion of memory utilization stored in /tmp/temp4"
    top -b -n1 | grep 'Mem'   >> /tmp/temp4
else
    echo "your memory have available space"
fi

if [ -e /tmp/temp4 ]
then
value="$(cat /tmp/temp4 | wc -l)"
if [ $value -ge 1 ]
then 
    echo "your memory usage is critical" | mail -s "critical" root@lokilabs.ai < /tmp/temp4 
fi
fi
