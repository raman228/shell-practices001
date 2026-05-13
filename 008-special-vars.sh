#!/bin/bash

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "Script name $0"
echo "Current directory: $PWD"
echo "who is runnig this: $USER"
echo "Home directory of user: $HOME"
echo "PID of this script: $$"
slee 50 &
echo "PID of the last command in background is: $!"

