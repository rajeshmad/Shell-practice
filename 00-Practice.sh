#!/bin/bash
# conditions

# checking if it root user or not
USERID=$(id -u)
if [ USERID -ne 0 ]
then
    echo "Error:: Please run this script with root access"
    exit 1 
else
    echo "you are running with root access"
fi

VALIDATE(){
if [ $? -eq 0 ]
    then
        echo "Installing Mysql is success"
    else 
        echo "Installing Mysql is Failure"
        exit 1
    fi
}

#1.MySQl
dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "MySQl is not installed .. going to install it"
    
    dnf install mysql -y
    
else
    echo "MySQl is already installed"

#2. python3

dnf list installed python3

if [ $? -ne 0 ]
then 
    echo "python3 is not installed .. going to install it"
    
    dnf install python3 -y
    if [ $? -eq 0 ]
    then
        echo "Installing python3 is success"
    else 
        echo "Installing python3 is Failure"
        exit 1
    fi
else
    echo "python3 is already installed"

#3.nginx

dnf list installed nginx

if [ $? -ne 0 ]
then 
    echo "nginx is not installed .. going to install it"
    
    dnf install nginx -y
    if [ $? -eq 0 ]
    then
        echo "Installing nginx is success"
    else 
        echo "Installing nginx is Failure"
        exit 1
    fi
else
    echo "MySQl is already installed"
