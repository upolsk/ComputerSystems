#!/bin/sh
if [ $# -ne 1 ]
then
	echo "We need only 1 parameter"
	exit 1
fi

filename=$1



if [ ! -f $filename ]
then
 echo "The file is not exist"
 exit 1
fi

while read line 
do
x=`echo $line | wc -w`
		
if [  $x -eq 2  ]
then 
	echo $line >> 2nd.txt
	else 
		echo $line >> 1st.txt

fi
done < $1 
