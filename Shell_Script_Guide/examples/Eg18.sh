#!/bin/bash
num=1

while [ $num -le 10 ]
do
        echo $num
        num=`expr $num + 1`
done

