#!/bin/bash
if [[ $# -lt 1 || $# -gt 2 ]]
then echo "Not enough parameters or too much parameters!"
exit 1
fi

DIRPATH=${1}

if [ $# -eq 1 ]
then 
find $DIRPATH -xtype l
exit 0
fi

PARAM=${2}

if [ $# -eq 2 ]
then
for FILE in $(find $DIRPATH)
do
SIZE=$(stat -c %h ${FILE})
if [ "${SIZE}" -ge "${PARAM}" ]
then echo "$FILE"
fi
done
fi

exit 0


