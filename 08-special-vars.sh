#!/bin/bash
echo "All variables passed to the script: $@"
echo "Number of variables: $#"
echo "Script name: $0"
echo "Home directory of the User: $HOME"
echo "User running this script: $USER"
echo "PID of the Script: $$"
sleep 10 &
echo "PID of the last command:$!"
