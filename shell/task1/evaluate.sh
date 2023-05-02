#!/bin/sh
if [ $# -eq 4 ]
then
        first=$1
        second=$2
  third=$3
  fourth=$4
elif [ $# -eq 1 ]
then
        if [ -f $1 ]
        then
                first=`cat $1 | cut -d " " -f 1`
                second=`cat $1 | cut -d " " -f 2`
    third=`cat $1 | cut -d " " -f 3`
    fourth=`cat $1 | cut -d " " -f 4`
        else
                echo "File doesn't exist!"
                exit 1
                fi
else 
        echo "Give 4 numbers: "
        read first second third fourth
fi
c=`expr $first + $second + $third`
expr $c \* $fourth
