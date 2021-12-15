#15 - Write a shell script to enter a year and show a message whether the year is a leap year or not.
echo "Enter Year"
read leap
if [ `expr $leap % 400` -eq 0 ]
then
echo leap year
elif [ `expr $leap % 4` -eq 0 ]
then
echo leap year
else
echo not a leap year
fi
read