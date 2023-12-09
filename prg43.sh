#!/bin/bash
if [ `id -u` -eq 0 ]
then
 echo "you are the root"
else 
 echo "ou are not root"
fi
