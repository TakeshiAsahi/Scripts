#10 - Write a shell script to give the result of student. Take marks of the five subjects, student name, roll no and percentage and show a message whether a student gets division as per the following rules:
# 70% <-> distinction 60%->1st division 50%->2nd division
# <40%->Fail

#!/bin/sh
echo "Enter roll no. of the student"
read rno
echo "Enter name of the student"
read name
echo "Enter the five subject marks for the student"
read m1 m2 m3 m4 m5

sum=`expr $m1 + $m2 + $m3 + $m4 + $m5`
per=`expr $sum / 5`
echo " Percentage is " $per

echo "$name : $rno,  your result is ,"

if [ $per -ge 60 ]
then
echo "Grade : First"
elif [ $per -ge 50 -a $per -le 59 ]
then
echo "Grade: Second"
elif [ $per -ge  40 -a $per -le 49]
then
echo "Grade : Third"
else
     echo "You failed"
fi
read

