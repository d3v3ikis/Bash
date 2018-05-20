#!/bin/bash

echo "Before setting the parameters"

echo "\$1 = $1"
echo "\$2 = $2"

set `echo "three four"`

echo "After setting parameters"

echo "\$1 = $1"
echo "\$2 = $2"

