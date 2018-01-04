#!/bin/bash

if [ $# -lt 2 ]
then echo "Not enough arguments"
exit 1
fi

DIRNAME=${1}
MAXSIZE=${2}
RESULT=0

for FILE in $(find "$DIRNAME" -maxdepth 1 -type f)
do
FILESIZE=$(wc -c "$FILE" | cut -d ' ' -f1)
if [ $FILESIZE -gt $MAXSIZE ]
then RESULT=$(($RESULT + $FILESIZE))
fi
done

echo "Result= $RESULT"
exit 0

