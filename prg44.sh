#!/bin/bash
#perform string tests
echo "enter the text"
read str
if [ $str ]
then
 echo "string exists and is not null"
fi

if [ -n $str ]
then
 echo "string exists and is zero length"
fi

if [ -z $str ]
then 
echo "string exists and its zero length"
fi
 
echo "The given string is $str"
echo "Now unset the variable"
unset str
echo "After unset, testing the string [ \$str ]"
if [ $str ]
then 
echo "string exists and is not null"
else
echo "It is null string"

fi
#end
