#12 - Write a shell script that takes an unspecified number of command line arguments (up to 9) of ints and finds their sum. Modify the code to add a number to the sum only if the number is greater than 10
#!/bin/bash
sum=0
for i in $@
do
    sum=`expr $sum + $i`
done
echo "Sum is $sum"

if [ $sum -ge 10 ]
	then
			echo " summation is greater then 10, "
            echo -n "So insert new number : " 
			read number 
			sum=`expr $sum + $number`
			echo " The sum is $sum."
fi

read



