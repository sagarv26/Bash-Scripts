#!/bin/bash

#Read the string
echo -n "Input String : "
read no
#Find string length 
length=`expr length $no`
while [ $length -ne 0 ]
do
  #Reverse the string
  b=$b`expr substr $no $length 1`
  length=`expr $length - 1`
done
echo "Reverse String is "$b

#String Comparision by considering Case
echo -e "\nComparing considering case"
if [ $no == $b ]
then
#Print if string is Palindrome
echo $no" is Palindrome "
else
#Print if string is not Palindrome
echo $no" is not Palindrome"
fi

#String Comparision by ignoring Case
echo -e "\nComparing ignoring case"
if [ ${no,,} == ${b,,} ]
then
#Print if string is Palindrome
echo $no" is Palindrome "
else
#Print if string is not Palindrome
echo $no" is not Palindrome"
fi