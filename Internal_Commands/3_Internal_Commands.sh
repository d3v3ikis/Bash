#!/bin/bash

echo "read"
while read var
do
	echo "$var"
done <3_supportFile.txt
