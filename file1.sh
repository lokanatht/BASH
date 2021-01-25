#!/bin/bash

##### create append data to a file #####

echo "enter a file name : "
read File

echo "enter a data to create a file : "
cat > $File

echo "your file name is : $File "
echo "your file $File data is :"
cat $File

echo "append any new data to your file : "
cat >> $File

echo "new data file is :" 
cat $File
