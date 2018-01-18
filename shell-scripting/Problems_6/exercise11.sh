#!/bin/bash
if [ $# -lt 1 ]
then echo "Not enough arguments!" 
exit 1
fi

if [ $# -eq 1 ]
then echo "$1"
exit 0
fi

COLOR="${1}"
case ${COLOR} in
-r) (echo -e "\033[0;31m $2")
	;;
-g) (echo -e "\033[0;32m $2")
	;;
-b) (echo -e "\033[0;34m $2")
	;;
*) echo "Unknown colour!"
   exit 2 
	;;
esac

exit 0
