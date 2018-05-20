#!/bin/bash

NO_PATTERN=71
DICT=/usr/share/dict/words

if [ -z "$1" ]
then
	echo 
	echo "Usage:"
	echo "`basename $1` \"pattern\""
	echo "where \"patter\" is in the form"
	echo "ooo.oo.o...."
	echo 
	echo "The o's are the letters you already know"
	echo "and the periods are the missing letters"
	echo "Letters and periods can be in any position"
	echo "example: w..i..l"
	echo
	exit $NO_PATTERN
fi

grep ^"$1"$ "$DICT"

