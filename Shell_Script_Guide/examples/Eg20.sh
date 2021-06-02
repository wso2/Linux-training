#!/bin/bash

while  read line

do
        if [ $line =  "Colombo" ]
        then
        echo "Not a continent"
        else
        echo $line
        fi
done < ../continents.txt

