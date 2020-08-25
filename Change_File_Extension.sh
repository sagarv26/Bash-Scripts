#!/bin/bash

#Display and Read file
echo "Enter File name: "
read file
#Check file existance
if [ -f $file ]
then 
#Display and Read extension
echo "Enter new Extension: "
read ext
#command to change the extension/ copy the content of file
cp ${file} ${file}.${ext}
echo "$file.$ext file created"
else
echo "File not exist"
fi