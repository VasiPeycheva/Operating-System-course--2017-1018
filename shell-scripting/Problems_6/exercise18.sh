#! /bin/bash

if [ $# -lt 1 ]
then echo "Not enough arguments!"
exit 1
fi

USERID=$(id -u $1)

echo "We will kill $(ps -u $1) process"
pkill -U $USERID
exit 0

