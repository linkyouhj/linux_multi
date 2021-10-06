#!/bin/sh
if [ "$#" != 2 ]
then
	echo "Wrong Number of Arguments(expected 2)"
	exit 1
fi

for i in "$@"
do
	if [ $i -gt 9 -o $i -lt 0 ]
	then
		echo "1~9 only"
		exit 1
	fi
done


for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		mul=`expr $i \* $j`
		echo -n "$i*$j=$mul "
	done
	echo ""
done

exit 0
