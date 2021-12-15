# Write a menu driven program:-
# a)	Place the pwd of user.
# b)	List the directory of user.
# c)	Long listing the directory of the user and at the same time this long listing is to be stored in a file.
# d)	Create a file in your directory and copy this file in your directory.
# e)	Move the specified file to your parent directory.
# f)	Rename the specified file in the current directory.
# g)	Make a sub directory in the current directory and change its permission by taking away all the permission of group and others.


#!/bin/sh
echo "a)Place the pwd of user."
echo "b)List the directory of user."
echo "c)Long listing the directory of the user and at the same time this long listing is to be stored in a file."
echo "d)Create a file in your directory and copy this file in your directory."
echo "e)Move the specified file to your parent directory."
echo "f)Rename the specified file in the current directory."
echo "g)Make a sub directory in the current directory and change its permission by taking away all the permission of group and others."
echo "h) Exit"

echo “Your choice?”

while true
do
echo "Enter ur choice :"
read opt

case $opt in

a) pwd
;;

b)echo $HOME
;;

c)ls -la | cat > Long.txt
  cat Long.txt
;;

d) cp Long.txt file.txt
;;

e)mv file.txt ../
;;

f)mv file.txt rename.txt
;;

g)mkdir subDir && chmod 000 subDir
;;

h) exit
;;
esac
done