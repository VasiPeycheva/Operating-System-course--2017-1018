#! /bin/bash

if [ $# -eq 0 ] 
then echo "No files!"
exit 0
fi

read STRING

for i in $*
do 
TIMES=$(grep "$STRING" $i | wc -l)
echo "In file $i you have the string \" $STRING \" $TIMES times!"
done

exit 0
