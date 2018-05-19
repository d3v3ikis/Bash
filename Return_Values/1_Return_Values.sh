#!/bin/bash

echo "tralalala"


NO_OF_ARGS=2
ERR_BADARGS=88
ERR_UNREADABLE=99

if [ $# -ne "$NO_OF_ARGS" ]
then
	echo "Usage: `basename $0` File01 File02"
exit "$ERR_BADARGS"
fi

if [[ ! -r "$1"  && ! -r "$2" ]]
then
	echo "Both files are not real"
exit "$ERR_UNREADABLE"
fi

if [ ! -r "$1" ]
then
	echo "File "$1" is not real"

exit $ERR_UNREADABLE
fi

if [ ! -r "$2" ]
then
	echo "File "$2" is not readable"
exit $ERR_UNREADABLE
fi

cmp $1 $2 &> /dev/null

if [ $? -eq 0 ]
then
	echo "Files are the same"
else
	echo "Files are not same"
fi

exit 0
