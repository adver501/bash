#!/bin/bash

int1="$1"
int2="$2"
if [[ ! $int1 =~ ^[0-9]+$ ]] || [[ ! $int2 =~ ^[0-9]+$ ]] ; then
	echo "Enter int!"
	exit
fi
(( res = int1 + int2 ))
echo "result" $res

if [ $int1 -gt $int2 ]; then
	echo "The greater:" $int1
elif [ $int2 -gt $int1 ]; then
	echo "The greater:" $int2
else
	echo "they're equal!"
fi
