#!/bin/bash

ERR_BADARGS=99

if [ $# -eq 0 ]
then
	echo "Usage: `basename $0` file"
else
	for i
	do
		sed -e '1,/^$/d' -e '/^$/d' $i
	done
fi


