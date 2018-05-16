#!/bin/bash

var="bla bla    b a a a aaaa    "

echo $var

echo "new line"

echo "$var"


var10=10
let "var10 += 10"
echo $var10

hi=`ls /home/deveikis`

echo $hi


varx=$(ls -l)
echo "$varx"
