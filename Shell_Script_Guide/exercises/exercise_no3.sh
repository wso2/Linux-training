#!/bin/bash

while read line
do

Salary=`echo $line | awk -F ',' '{print $5}'`

if [ $Salary -gt 2500 ] 
	then
	echo $Salary
fi 

done < ../UserSalary.txt
