#!/bin/bash
cat ../UserStat.txt | awk '{print $1}' > output.txt

while read line
do
       if [ $line == "Tom" ]
       then
	echo WSO2-USER
       else
	echo $line
       fi 

done < output.txt
