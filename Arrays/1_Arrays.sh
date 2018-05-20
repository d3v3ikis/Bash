#!/bin/bash

arr[0]=20
arr[1]=22

echo -e "${arr[0]} \n${arr[1]}"

declare -a arr1
arr1=( 10 20 30 40 50 60 )

echo -e "${arr1[0]} \n${arr1[1]}"
