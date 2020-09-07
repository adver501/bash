#!/bin/bash

int1="$1"
int2="$2"
if [[ ! $int1 =~ ^[0-9]+$ ]] || [[ ! $int2 =~ ^[0-9]+$ ]] ; then
    echo "Enter int!"
    exit
fi

operator="$3"

case $operator in
	'+')
		echo "$(($int1 + $int2))"
	;;
	
	'-')
		echo "$(($int1 - $int2))"
	;;
	
	'/')
		echo "$(($int1 / $int2))"
	;;
	
	'*')
		echo "$(($int1 * $int2))"
	;;
esac
