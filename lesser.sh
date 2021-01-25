#!/bin/bash

a=$1
b=$2
c=$3
d=$4

if [ $a -lt $b -a $a -lt $c -a $a -lt $d ]
then 
    echo " A value $a is lesser "
elif [ $b -lt $c -a $b -lt $d ]
then 
    echo " B value $b is lesser "
elif [ $c -lt $d ]
then 
    echo " C value $c is lesser "
else
    echo " D value $d is lesser "
fi
