#!/bin/bash

FILE=3_supportFile.txt
declare -a arr_file
arr_file=( `cat "$FILE"` )
echo ${arr_file[*]}
size=${#arr_file[*]}
echo "array size is $size"

