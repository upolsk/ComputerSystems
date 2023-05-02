#!/bin/sh
#We need only one parameter(fle) to be executed
#If we have more than or less than one parameter it must print out us "We need only one parameter!
if [ $# -ne 1 ]
then
	echo "We need only one parameter!"
	exit 1
fi

#-f checks if the parameter(file) exists or not!
#! -f means if doesn't exist
#If file doesn't exist it must print out "File doesn't exist!"
if [ ! -f $1 ]
then
	echo "File doesn't exist!"
	exit 
fi

#while read row means reads every row without looking to the spaces
#If number of lines is even which is divisible by 2 then it takes for itself only even numbers which are added
NumberOfLines=1
while read row
do 
	odd=0
	even=0
	if [ `expr $NumberOfLines % 2` -eq 0 ]
	then
		echo $row > numbers.txt

		for i in `cat numbers.txt`
		do 
			if [ `expr $i % 2` -eq 0 ]
			then
				even=`expr $i + $even`
			fi
		done
		echo "The sum of even numbers in $NumberOfLines is: $even"

	
#If number of lines is odd which is not divisible by 2 then it takes for itself only odd numbers which are added

	else
		echo $row > numbers2.txt
		for i in `cat numbers2.txt`
		do
			if [ `expr $i % 2` -ne 0 ]
			then
		        	odd=`expr $i + $odd`
			fi
		done
		echo "The sum of odd numbers in $NumberOfLines is: $odd"
	fi
#Number of files must be iterated!
	NumberOfLines=`expr $NumberOfLines + 1`

done < $1

if test -f numbers.txt
then
rm -r numbers.txt numbers2.txt
fi

