#!/bin/bash
########### print greatest value ########
a=$1
b=$2
c=$3
d=$4

if [ $a -gt $b -a $a -gt $c -a $a -gt $d ]
then 
    echo " A value $a is greater "
elif [ $b -gt $c -a $b -gt $d ]
then 
    echo " B value $b is greater "
elif [ $c -gt $d ]
then 
    echo " C value $c is greater "
else
    echo " D value $d is greater "
fi
