#!/bin/bash
MIN=4

if [ -n "$1" ]
then
	echo "pirmas yra $1"
fi

if [ -n "$2" ]
then    
	echo "antras yra $2"
fi

if [ -n "$3" ]
then    
	echo "trecias yra $3"
fi

if [ -n "${4}" ]
then    
	echo "ketvirtas yra ${4}"
fi

echo "List of arguments "$*""
echo "name of script: \""$0"\""
if [ $# -lt "$MIN" ]
then	
	echo "not enough arguments"
fi
