#!/bin/bash

NO_OF_ARGS=2
ERR_NOARGS=50
ERR_BADARGS=51
ERR_UNREADABLE=52
ERR_NOFILE=53
ERR_SIZE=54

if [[ -z "$1" && -z "$2" ]]
then
	echo "No arguments given"
	exit $ERR_NOARGS
fi

if [ $# -ne $NO_OF_ARGS ]
then
	echo "Usage: `basename $0` file01 file02"
	exit $ERR_BADARGS
fi

if [[ ! -e "$1" || ! -e "$2" ]]
then 
	echo "Files does not exist"
	exit $ERR_NOFILE
elif [[ ! -f "$1" || ! -f "$2" ]]
then
	echo "Files need to be regular files"
	exit $ERR_NOFILE
elif [[ ! -r "$1" || ! -r "$2" ]]
then
	echo "Files are not readable"
	exit $ERR_UNREADABLE
elif [[ ! -s "$1" || ! -s "$2" ]]
then
	echo "Files are zero-size"
	exit $ERR_SIZE
fi

cat $1 $2 | sort >file1

if [ $? -eq 0 ]
then
	echo "execution of script was succesful"
	cat file1
else
	echo "execution of script failed"
fi

