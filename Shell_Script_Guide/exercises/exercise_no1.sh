#!/bin/bash

for i in {1..20}
do 

	if [ $i -le 5 ]
	then
		echo "SMALL"
	elif [ $i -ge 15 ] 
	then
		echo "HIGH"
	else
		echo $i
	fi 

done
