#!/bin/bash

#MySQl installation steps

#1. chek if its Sudo user or not

USER=$(id -u)

if [ $USER -ne 0 ]
then
    echo "Error:: Please run the script with Admin access"
    exit 1
else
    echo "Running with admin access"
fi

#2. check if MySQl is already installed or not


dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySql is not installed going to install.."

dnf install mysql -y

if [ $? -equal 0 ]
then 
    echo "MySql is installation is ..successfull"
else
    echo "MySQl intsallation is failur"
fi

else
    echo "MySql is already installed"

