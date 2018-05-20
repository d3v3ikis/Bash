#!/bin/bash

for file in *
do
	ls -la "$file"
	shopt -s nullglob
done

