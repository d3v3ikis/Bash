#!/bin/bash

ERR_FILE_ACCESS=99
ERR_BADARGS=100

if [ ! -r "$1" ]
then
	echo "Can't read from input file!"
	echo "Usage: $0 input_file output_file"
	exit $ERR_FILE_ACCESS
fi

if [ -z "$2" ]
then
	echo "Specify output file"
	echo "Usage: $0 input_file output_file"
	exit $ERR_BADARGS
fi

exec 4<&0
exec < $1

exec 7>&1
exec > $2

tr a-z A-Z

exec 1>&7 7>&-
exec 0<&4 4<&-
