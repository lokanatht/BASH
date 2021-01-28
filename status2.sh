#!/bin/bash
#1.finding how many normal users in server 
if [ -e normal ]
then
    rm -rf normal
    echo "$(getent passwd {1000..60000})" >> normal
    user="$(cat normal | awk -F ":" '{print $1}')"
    echo  "the normal users existing in the server are : $user"
else
    echo "$(getent passwd {1000..60000})" >> normal
    user="$(cat normal | awk -F ":" '{print $1}')"
    echo  "the normal users existing in the server are : $user"
fi

#######################################3
#2.how many users are connected to server
echo "#########################"
users="$(uptime | awk -F "," '{print $2}')"
echo " users are connected to server are : $users"
