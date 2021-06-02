#!/bin/sh

A=70
B=90

val=`expr $A + $B`
echo "A + B : $val"

val=`expr $A - $B`
echo "A - B : $val"

val=`expr $A \* $B`
echo "a * b : $val"

val=`expr $B / $A`
echo "B / A : $val"

val=`expr $B % $A`
echo "B % A : $val"

