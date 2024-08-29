#!/bin/bash

##########################
# Author: Amir Hossein Donyaei
# Version: 1.0.0
# Date: 2024-08-28
# Description: This script is used to create a new user
# Usage: ./one.sh
##########################

file=$1

if [[ -f $file ]];then
    cp /dev/null $file
else
    touch $file
fi


if [[ $? -ne 0 ]];then
    echo "Error: Failed to create $file"
    exit 1
else
    echo "Success: $file created"
    exit 0
fi