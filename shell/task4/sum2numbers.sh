#!/bin/sh
z=0
while read line
do
x=`echo $line | cut -d ";" -f 1`
y=`echo $line | cut -d ";" -f 2`
s=`expr $x + $y`
z=`expr $z + $s `
done < $1
echo the result = $z
