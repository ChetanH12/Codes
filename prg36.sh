#!/bin/bash
echo "
1. Red
2. Blue
3. White
4. Green
5. Exit
"
read -p "choose your choice:" ch
case $ch in
1)
 echo "you have choose Red"
 ;;
2)
 echo "you have choose Blue"
 ;;
3)
 echo "you have choose White"
 ;;
4)
 echo "you have choose Green"
 ;;
5)
 echo "you have choose Exit"
 ;;
*)
 echo "you have selected other than 1 - 5"
esac #case closure
#End
