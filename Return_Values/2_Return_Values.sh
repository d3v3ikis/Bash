#!/bin/bash

var="`pwd`/5"
echo "$var"
ls -l "$var"

if [[ -e $var ]]
then
	echo "file exists"
else
	echo "file not exists"
fi
