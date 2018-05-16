#!/bin/bash

echo "\"Linux is Linux\""

let val=500/2

val2=`echo $val`

echo $val2

var=20
if [ "$var" -gt 15 ]
then :
else
	echo "False"
fi
