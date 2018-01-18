#!/bin/bash

if [ $# -lt 2 ]
then echo "Not enough parameters!"
else 
RESULT=$(grep -c $2 $1)
STATUS=$?
echo "The exit status is: $STATUS"
fi

