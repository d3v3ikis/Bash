#!/bin/bash

echo \${one,two,three}\$

var1=1
var2=2

(
var1=11
var2=12
)

{
var1=21
var2=22
}

echo "$var1 $var2"
