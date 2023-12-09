#Demonstration case conditional statment
#!/bin/bash
read -p "Enter the os name (Ex: solaries, aix, linux, unix, windows, Macos): os

case $os in
solaries)
 echo "The os entered is Solaries"
 ;;
aix)
 echo "The os entered is aix"
 ;;
linux)
 echo "The os entered is linux"
 ;;
unix)
echo "The os entered is unix"
;;
windows)
echo "The os entered is window"
;;
Mcaos)
echo "The os entered is Macos"
;;
*) 
 echo "you entered other than solaries, aix, linux, unix, window, Macos.."

esac #case End
#End of the program
