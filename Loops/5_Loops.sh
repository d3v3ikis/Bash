#!/bin/bash

PS3='Pock a color'

echo

select color in "brown" "blue" "red" "green" "black"
do
	echo "you selected this color: $color"
	break
done

exit 0
