#!/bin/bash

MAX=23
i=1

while [ "$i" -le "$MAX" ]
do
	n=$RANDOM
	echo "$n"
	let "i += 1"
done
