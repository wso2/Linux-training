#!/bin/bash

#Change the value of number variable and see how if ,elif works
number=50

if [ $number -eq 100 ]
then
 echo "number is equal to 100"

elif [ $number -lt 100 ]
then
 echo "number is less than 100"

else
 echo "number is greater than 100"
fi

