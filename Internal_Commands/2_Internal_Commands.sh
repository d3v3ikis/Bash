#!/bin/bash

up=$'\x1b[A'
down=$'\x1b[B'
right=$'\x1b[C'
left=$'\x1b[D'

read -s -n3 -p "Press any arrow on keaboard" arrow
printf "\n"
case "$arrow" in
	$up) echo "You pressed up";;
	$down) echo "You pressed down";;
	$right) echo "You pressed right";;
	$left) echo "You pressed left";;
esac

echo "enter the string"
read -r var
echo "$var"
