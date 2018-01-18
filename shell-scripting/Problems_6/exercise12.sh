#!/bin/bash

NUMBER=$(( (RANDOM % 100) + 1  ))
echo "Guess? "
TRY=0
read CHOICE
while [ ${NUMBER} != ${CHOICE} ]
do
TRY=$((TRY+1))
if [ ${CHOICE} -lt ${NUMBER} ]
then echo "...bigger!" 
fi

if [ ${CHOICE} -gt ${NUMBER} ]
then echo " ... smaller!"
fi

echo "Guess?"
read CHOICE

done

echo "RIGHT! Guessed $NUMBER in $TRY tries"
exit 0

