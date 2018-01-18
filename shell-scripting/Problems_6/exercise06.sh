#!/bin/bash

read USERID

echo "$(last $USERID | wc -l)"
exit 0
