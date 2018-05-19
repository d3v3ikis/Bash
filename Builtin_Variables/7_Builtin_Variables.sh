#!/bin/bash

declare -a x=(1 2 3 5 5)

for i in {0..4}
do
	echo "${x[$i]}"
	let "i += 1"
done

