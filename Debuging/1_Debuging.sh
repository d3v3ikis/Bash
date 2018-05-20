#!/bin/bash

#set -v
set -x

rm abc
let " line = $LINENO -1 "

echo "rm is in line $line"
