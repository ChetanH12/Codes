#!/bin/bash
#read marks in 5 subjects and calculates its average using bc command
#if not given inputs via command line; program should exit prompting relevant message
if [ $# -ne 5 ]
then
	echo "invalid inputs
	Usage is $0 marks1 marks2 marks3 marks4 marks5
	Try again"
else
	echo "Obtained marks are
	subjects: $1
	subjects: $2
	subjects: $3
	subjects: $4
	subjects: $5

	Total Marks: `echo $1+$2+$3+$4+$5 | bc`
	Average is: `echo "scale=2;($1+$2+$3+$4+$5)/5" | bc` "
fi

#end of the script
