#! /bin/bash

echo "Please enter path: "
read FULLPATH
FILECNT=$(find $FULLPATH -type f | wc -l)
DIRCNT=$(find $FULLPATH -type d | wc -l)

echo "In `basename $FULLPATH` you have $FILECNT files and $DIRCNT folders"

