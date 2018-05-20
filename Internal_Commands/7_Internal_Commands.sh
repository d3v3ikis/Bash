#!/bin/bash

while getopts :dm option
do
	case $option in
	d) d_option=1
	;;
	m) m_option=1
	;;
	*) echo "Usage: -dm"
	;;
	esac
done

day=`date | awk '{print $1 " " $2}'`

if [[ ! -z $d_option ]]
then
	echo "Day is $day"
fi

month=`date | awk '{print $3}'`

if [[ ! -z $m_option ]]
then
	echo "Month is $month"
fi

shift $((OPTIND -1))



