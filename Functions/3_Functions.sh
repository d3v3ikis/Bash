#!/bin/bash

pattern=$1
FILE=/etc/passwd

get_real_name ()
{
	while read line
	do
		echo "$line" | grep $1 | awk -F":" '{ print $1 }'
	done
} <$FILE

get_real_name $pattern
