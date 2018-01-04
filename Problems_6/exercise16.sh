#!/bin/bash

if [ $# -eq 0 ]
then echo "No given arguments!"
exit 1
fi

for i in $*
do
if [ -f $i ]
then
if [ -r $i ]
then echo "$i - This is file, readable by you!"
else echo "$i - This is file, which you cannot access!"
fi 
elif [ -d $i ]
then
MAXSIZE=$(find "$i" -type f | wc -l)
for FILE in $(find "$i" -maxdepth 1 -type f)
do
if [ $(wc -c "$FILE" | cut -d ' ' -f1) -lt $MAXSIZE ]
then echo "$FILE"
fi
done
else echo "This is neither file or directory!"
fi
done

exit 0
