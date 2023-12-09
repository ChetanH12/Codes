#!/bin/bash
if [ $# -ne 1 ]
then 
	 echo "you entered invalid number of arguments.. Usage $0 username"
else
 echo "Menu
 1. Add user
 2. Delete user
 3. List User atributes
 4. Exit
 Read your choice 1-4:"

 read num
 case $num in
1) 
grep -w ^$1 /etc/passwd &>/dev/null 
if [ $? -ne 0 ]
then
  useradd $1
  echo "provide the password:"
  read pass
  echo "$pass" | passwd --stdin $1 > /dev/null
 else
  echo "cant create user ... It exists.. Exiting .."
fi
;;
2)
grep -w ^$1 /etc/passwd &>/dev/null
if [ $? -eq 0 ]
then
  userdel -r $1
 else
  echo "cant delete user ... It doesnt exists .. existing.."
fi
;;
3)
  grep -w ^$1 /etc/passwd &>/dev/null
if [ $? -eq 0 ]
then 
  grep -w ^$1 /etc/passwd
  chage -l $1
else
  echo " cant list user details... It doesnt exists .. existing.."
fi
;;
4)  
  echo "you have choosen exit option.. existing.."
;;
*)
  echo "you have choosen exit optio.. existing.."
;;
esac
fi
#end

