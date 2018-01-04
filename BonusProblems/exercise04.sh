#! /bin/bash

if [[ $# -lt 1 || $# -gt 2 ]]
then echo "Number of parameters mismatch"
exit 1
fi

DIRPATH=${1}
BROKENLINKS=$(find $DIRPATH -xtype l | wc -l)

for FILE in $(find $DIRPATH) 
do
if [ -h ${FILE} ]
then
if [ $# -eq 1 ]
then stat -c %N ${FILE}
else stat -c %N ${FILE} > $2
fi
fi 
done

if [ $# -eq 1 ]
then echo "Broken symlinks: $BROKENLINKS"
else echo "Broken symlinks: $BROKENLINKS" >> $2
fi

exit 0

