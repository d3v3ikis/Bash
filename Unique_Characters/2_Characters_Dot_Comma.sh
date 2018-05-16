#!/bin/bash

colors="red blue white"

for col in $colors
do
	echo $col
done

words="one two three"
for wor in "$words"; do echo $wor; done


var=TesTIng
echo ${var,,}
