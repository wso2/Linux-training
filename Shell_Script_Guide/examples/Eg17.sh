#!/bin/bash

words="Deliver enhanced digital experiences and grow your business at speed and scale with WSO2’s industry-leading products for API management and integration and customer identity and access management."

for value in $words
do

if [ $value == "API" ]
then
echo "WSO2"
else  
 echo $value
fi 

done

