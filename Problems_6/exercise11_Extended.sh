#!/bin/bash

if [ $# -lt 1 ]
then echo "Not enough parameters!"
exit 1
fi

#if we want to stay with the original text color
if [ "${1}" == "-x" ]
then 
while read LINE
do
  echo "$LINE"
done
exit 0
#if we want to change the text color
else
COLOR="${1}"
while read LINE
do
case ${COLOR} in
-r) (echo -e "\033[0;31m $LINE")
	COLOR="-g"
        ;;
-g) (echo -e "\033[0;32m $LINE")
	COLOR="-b"
        ;;
-b) (echo -e "\033[0;34m $LINE")
	COLOR="-r"
        ;;
*) echo "Unknown color!"
   exit 2
        ;;
esac
#bring back original text color
(echo -e "\033[0;m")
done
fi
exit 0
