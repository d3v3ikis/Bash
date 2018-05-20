#!/bin/bash

function1 ()
{
	echo "function2 inside function1"
	function2
}

function2 ()
{
	echo "I'm called function2"
}

function1
