#23 - Write a Menu driven program
# a)	Check the contents of /etc/passwd file.
# b)	List of users who have currently logged in.
# c)	Pwd
# d)    Exit

#!/bin/sh
echo “1. contents of file”
echo “2. List of users who have logged in”
echo “3. Pwd”
echo “4. Exit”
echo “Your choice?”

while true
do
read opt

case $opt in

1) cat file1.txt && echo ""
;;

2) who | wc
;;

3) pwd
;;

4) exit
;;
esac
done
