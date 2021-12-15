#8 - Write a shell script and declare two variables A and B. 
# i)	Take static value of A=5 and B=3. Perform all arithmetic operations on it.
# ii)	Assign integer values to variables and perform relational  operations on the values assigned and display the messages accordingly
# iii)	Accept values from command-line and perform logical operations on the values accepted , and display the messages accordingly. 

#!/bin/sh
var1=$1
var2=$2

a=5
b=3

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

echo "For entered data in cmd line"
if [ $var1 == $var2 ]
then
   echo "a is equal to b"
fi

if [ $var1 != $var2 ]
then
   echo "a is not equal to b"
fi
read