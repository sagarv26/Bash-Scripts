#!/bin/bash

i="y"
while [ $i = "y" ]
do
echo " 1. Your Current Shell"
echo " 2. Your Home directory"
echo " 3. Your Operating System type"
echo " 4. Your Current path"
echo " 5. Your Current working directory" 
echo " 6. Show existing users"
echo " 7. About your OS"
echo " 8. Show Available shells"
echo " 9. Show Computer CPU Information"
echo " 10. Show Memory information"
echo " 11. Show Hard Disk information like Size of hard-disk, cache memory, model etc"
echo " 12. Exit"
echo " Select any of yout choice: "
read num

case $num in
1)
echo " Your Current Shell"
echo $SHELL
;;
2)
echo " Your Home directory"
~
;;
3)
echo " Your Operating System type"
uname -o
;;
4)
echo " Your Current path"
echo $PATH
;;
5)
echo " Your Current working directory"
pwd
;;
6)
echo " Show existing users"
cat /etc/passwd
;;
7)
echo " About your OS"
uname -a
;;
8)
echo " Show Available shells"
cat /etc/shells
;;
9)
echo " Show Computer CPU Information"
cat /proc/cpuinfo | head -5
;;
10)
echo " Show Memory information"
df
;;
11)
echo " Show Hard Disk information like Size of hard-disk, cache memory, model etc"
cat /proc/meminfo
;;
12)
exit;;
*)echo "Invalid Choice";;
esac
echo "Do you want to continue? y/n"
read in
if [ $i != "y" ]
then
exit
fi
done
