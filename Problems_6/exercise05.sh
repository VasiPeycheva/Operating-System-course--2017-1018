#!/bin/bash

USER=$(whoami)
RESULT=$(grep -c  "^s[0-9]" <<< $USER)

if [ $RESULT -gt 0 ] 

then echo $USER

else echo "DANGER! IT'S A TEACHER!"

fi


