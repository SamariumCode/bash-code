#!/bin/bash

##########################
# Author: Amir Hossein Donyaei
# Version: 1.0.0
# Date: 2024-08-28
# Description: This script is used to create a new user
# Usage: ./one.sh
##########################


# counter=0

# while [[ $counter -lt 10 ]];do
#     echo "Hi"
#     sleep 1
#     (( counter++ ))
# done

while true;do
    read -p "Enter your name: " name

    if [[ $name == "Admin" ]];then
        echo "Welcome Admin"
        break
    else
        echo "You are not Admin"
    fi
done
