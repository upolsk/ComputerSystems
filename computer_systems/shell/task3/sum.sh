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
	sumInLine=0
	
	for i in $line
	do
		s=$sumInLine 
	
		sumInLine=`expr $sumInLine + $i`
	done

	echo $s "+" $i "=" $sumInLine 
done < $filename







