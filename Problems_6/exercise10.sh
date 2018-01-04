#!/bin/bash

if [ $# -lt 1 ]
then echo "Not enough arguments!" 
exit 1
fi

COMMAND=$(egrep -x '([0-9]*[a-z]*[A-Z]*)*' <<<$1)
RESULT=$?

if [ $RESULT -eq 0 ]
then echo "The given parameter  consist only of number and letters!"
else echo "The given parameter consist special characters!"
fi

exit 0

