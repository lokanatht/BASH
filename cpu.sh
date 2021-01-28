#!/bin/bash

######## cpu utilzation warning ############

war="30"

echo  "top 10 cpu utilization processes:"
echo "$(top | head -n 17 | tail -n 10)"

cpu="$(top -b -n1 | grep 'Cpu(s)' | awk '{print $2 + $4}' | awk -F "." '{print $1}')"
if [ $cpu -gt $war ]
then 
    echo "cpu usage is critical"
    echo "the inforamtion of cpu utilization stored in /tmp/temp3"
    top -b -n1 | grep 'Cpu(s)'   >> /tmp/temp3
else
    echo "your cpu is safe"
fi

if [ -e /tmp/temp3 ]
then
value="$(cat /tmp/temp3 | wc -l)"
if [ $value -ge 1 ]
then 
    echo "your cpu is critical" | mail -s "critical" root@lokilabs.ai < /tmp/temp3 
fi
fi
