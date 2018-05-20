#!/bin/bash

var="1 2 3"
echo $var
set -- $var
i=1
while [ "$i" -le $# ]
do
	echo -n "\$$i = "
	eval echo \$$i
	(( i++ ))
done

set --

