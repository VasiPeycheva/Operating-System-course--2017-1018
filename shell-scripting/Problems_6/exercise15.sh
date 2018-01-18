#!/bin/bash

if [ $# -lt 2 ]
then echo "Not enough arguments!"
exit 1
fi

DIRNAME=${1}
SIZE=${2}

for FILE in $(find $DIRNAME -maxdepth 1 -type f)
do

if [ $(wc -c "${FILE}" | cut -d ' ' -f1) -ge $SIZE ]
then echo ${FILE}
fi
done

exit 0
