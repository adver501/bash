#!/bin/bash

counter=0

while [ $counter -lt 20 ]
do
	read -p 'Enter a number: ' in
	i=0
	t=0
	c1=0
	sum=0
	while [ $c1 -lt 3 ]
	do
		let i=i*10
		let t=in%10
		((sum = sum + t))
		((i = i + t))
		let in=in/10
#		echo The reverse is $in
		if [ $in -eq 0 ]; then
			let c1=3
		fi
	done
	echo The reverse is: $i
	echo sum: $sum
	let counter=counter+1
done
