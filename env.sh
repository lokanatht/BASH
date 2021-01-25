#!/bin/bash

#### print environmental variables ######

echo " hello good morning "
echo " my hostname is : $HOSTNAME"
echo " my present working directory is : $PWD"
echo " my logon user is : $LOGNAME"
echo " my shell name is : $SHELL"
ip=$(hostname -I)
echo " my ip address are : $ip"
echo " my home directory is :$HOME"
echo " my old pwd is : $OLDPWD"
echo " my login user is : $USER"
echo " my history size is : $HISTSIZE"
echo " my commands path is : $PATH"
echo " my mail storage location is : $MAIL"
echo " good bye "

