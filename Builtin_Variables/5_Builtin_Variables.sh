#!/bin/bash

TIME_LIMIT=21
TIME_INTERVAL=3

echo "This script will run $TIME_LIMIT seconds"

echo "if you want to cancel script, enter Ctrl-C"

while [ "$SECONDS" -le "$TIME_LIMIT" ]
do
	echo "this scripts runs for $SECONDS"
	sleep $TIME_INTERVAL
done


