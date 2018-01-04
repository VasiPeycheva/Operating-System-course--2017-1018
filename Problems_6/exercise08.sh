#!/bin/bash

if [ $# -lt 3 ]
then echo "not enough arguments!"
else (cat $1 $2 | sort -d) >> $3
fi

