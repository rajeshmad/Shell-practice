#!/bin/bash

#MySQl installation steps

#1. chek if its Sudo user or not

USER=$(id -u)

if [ $USER -ne 0]
then
    echo "Error:: Please run the script with Admin access"
    exit 1
else
    echo "Running with admin access"
fi
