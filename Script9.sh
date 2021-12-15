#9 - Write a shell script which accepts a number and finds whether the number is an odd or even number.
#!/bin/sh
echo "Enter a number :"
read a
if test `expr $a % 2` == 0
then echo "Given number is even"
else
echo "Given number is odd"
fi
read


