#!/bin/bash

##########################
# Author: Amir Hossein Donyaei
# Version: 1.0.0
# Date: 2024-08-28
# Description: This script is used to create a new user
# Usage: ./one.sh
##########################

if [[ $# -ne 3 ]]; then
    echo "Bad Usage"
    echo "Usage: $0 <directory> <file_name> <content>"
    echo "Example: $0 /path/to/directory filename.txt 'Your content here'"
    exit 1
fi 

directory="$1"
file_name="$2"
content="$3"

path="${directory}/${file_name}"

if [[ ! -d ${directory} ]];then
    mkdir ${directory} || { echo "Failed to create directory"; exit 1; }
fi

if [[ ! -f ${path} ]];then
    touch ${path} || { echo "Failed to create file"; exit 1; }
fi

echo ${content} > ${path}  



