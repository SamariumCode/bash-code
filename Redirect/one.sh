#!/bin/bash


# cd /home/amir/Desktop
# cat /root/ 2>> e.txt
# cat one.sh &>> e.txt

cd $(dirname $0)


read -p "Enter a number: " num

echo $num >> nums.txt