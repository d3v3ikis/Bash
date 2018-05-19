#!/bin/bash

a=unset
prev=$a

while echo "Previous variable $prev"
	echo
	prev=$a
	[ "$a" != "end" ]
do
	echo "enter END to quit or anything else to stay"
	read a
	echo "variable =$a"
done

