#!/bin/bash


for FATHER in $(ps -e -all | tr -s ' ' | cut -d ' ' -f5 | tail -n +2)
do
FATHERPROC=$(pgrep -P $FATHER | wc -l)
	for SON in $(pgrep -P $FATHER)
	do 
	SONPROC=$(pgrep -P $SON | wc -l)
	if [ $SONPROC -gt $FATHERPROC ]
	then echo "$SON"
	fi
	done
done

exit 0
