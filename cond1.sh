#!/bin/bash

if [ $# -lt 2 ]
then
    echo " please enter required pp's: "
    echo " usage like : sh $0 \$1 \$2 "
    exit
else

a=$1
b=$2
c=$3
d=$4
echo " your entered pp's are : $@"
    
    if [ $a -gt $b ]
    then 
	echo " A value $a is greater. "
    else
	if [ $a -eq $b ]
	then 
	    echo " A and B  are equal "
	else
	    echo " B value $b is greater. "
	fi
     fi
fi
