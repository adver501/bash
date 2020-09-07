#!/bin/bash

counter=1
first="$2"
let first=first-1
last="$3"
let last=last+1
while IFS= read -r line || [[ -n "$line" ]]; do
    if [ $counter -gt $first ] && [ $counter -lt $last ];then
    	echo "$line"
    fi
    let counter=counter+1
done < "$1"
