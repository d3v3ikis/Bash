#!/bin/bash

someFunction()
{
	echo "Function name is $FUNCNAME"
}

someFunction

echo "Outside \$FUNCNAME = $FUNCNAME"
