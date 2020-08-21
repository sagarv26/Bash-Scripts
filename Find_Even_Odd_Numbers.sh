#!/bin/bash

echo enter m value as Starting range to calculate odd and even numbers.
read m
echo enter n value as Ending range to calculate odd and even numbers.
read n
i=$m
even="even numbers from range $m to $n : "
odd="odd numbers from range $m to $n : "
while [ $i -le $n ]
do
if [ `expr $i % 2` -eq 0 ]
then
even+="$i "
else
odd+="$i "
fi
i=`expr $i + 1`
done
echo $even
echo $odd