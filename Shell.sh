#1 -  Write a shell script to compare two numbers.
#!/bin/bash

var1=$1
var2=$2
if [ $var2 -gt $var1 ]
    then
        echo "$var2 is greater than $var1"
elif [ $var1 -gt $var2 ]
    then    
        echo "$var1 is greater than $var2"
else
    echo "both are equal = $var1"
fi
read



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

#11 -  Write a shell script which checks the age of the student for swimming. The condition are as follows:
# <10- not allowed
# 10-18- junior pool only
# >18- swimming is allowed in depth also

#!/bin/sh
echo "Enter age : "
read age
if [ $age -ge 18 ]
then
echo "swimming is allowed in depth also"
elif [ $age -ge 9 -a $age -le 18 ]
then
echo "junior pool only"
else
     echo "not allowed"
fi
read
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



#13 -  Write a shell script that will take an input file and remove identical lines (or duplicate lines from the file)  
if [ $# -eq 0 ]
then
echo "no arguments"
else
echo "---------the original file is below ------"
cat $1
echo
echo "------file after removing duplicates------"
echo
sort $1 | uniq > removeDupes.txt
cat removeDupes.txt
fi
read
#14
#Write a shell script to find out the gross salary of an employee when the given information is as under:-
# a)	If basic salary is less than Rs.1500/- HRA = 10% of basic
# DA = 90% of basic
# b)	If basic is greater than or equal to Rs.1500/- HRA = 500/-
# DA = 98% of basic

echo "enter the basic salary:"
read bsal
if [ $bsal -lt 1500 ]
then
gsal=$((bsal+((bsal/100)*10)+(bsal/100)*90))
echo "The gross salary : $gsal"
fi
if [ $bsal -ge 1500 ]
then
gsal=$(((bsal+500)+(bsal/100)*98))
echo "the gross salary : $gsal"
fi
read


#other way
# Echo "enter Basic salary of Employee"
# read basic_salary
# if [ $basic_salary -lt 15000 ]
# then
# hra=`expr  $basic_salary \* 10 / 100`
# da=`expr $basic_salary \* 90 / 100`
# else
# hra=`expr $basic_salary \* 50 / 100`
# da=`expr $basic_salary \* 50 / 100`
# fi
# gs=`expr $basic_salary + $hra + $da`
# echo "Gross salary : Rs. $gs"
# read
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
#16 - Write a shell script using concept of position parameters which copies one file and display destination file and it should also contain an error message if the source file does not exist. 
if test $# -eq 2
then
if test -f $2
then
echo "File $2 already exists" 
elif test -f $1
then
cp $1 $2
echo "Copying from file1 to file2"
echo "contents of file is being copied" 
else 
echo "file $1"
fi
else
echo "working successfully"
fi 
read
#17 - Write a shell script to find area and perimeter of rectangle.
echo "Enter length"
read l
echo "Enter breadth"
read b

area=`expr $l \* $b`
peri=`expr $l \* 2 + $b \* 2`
echo "The area of the rectangle is $area"
echo "The Perimeter of the rectangle is $peri"
read
#18 - Write a shell script where distance between two cities is input through the keyboard in km. Convert and print this distance in meters, feet, inches and
#cm.

echo "Enter length in KM"
read km
m=$(($km*1000))
cm=$(($m*100))
ft=$(($km*3280))
in=$(($km * 39370))
echo "Distance in meters : $m"
echo "Distance in feets : $ft"
echo "Distance in inches : $in"
echo "Distance in centimeters : $cm"
read

# 19 - Write  a shell script that accepts 
# a.	employee name  in small case and converts it to Uppercase and sort the employee names in ascending order

# for i in $*
# do
#     echo "$i" | tr '[:lower:]' '[:upper:]' >> r.txt
# done
# echo >> r.txt
# sort r.txt 

# read


# b.	employee ID and remove all digits from the string 
echo "input is $*"

if [ $# -eq 1 ]
    then 
        echo "after removing digits"
        # echo $1 | sed 's/[0-9]//g'
        echo $1 | tr -d '0123456789'
    else   
        echo "Invalid Arguments"
fi
read
#20 - Write a shell script to find sum of digits of a number and check whether the number is palindrome or not.
echo "enter number"
read num
on=$num
n=$num
while [ $num -gt 0 ]
do
    mod=$((num % 10)) 
    sum=$((sum + mod))   
    num=$((num / 10))    
done
echo "sum is $sum"
sd=0
 
rev=""
 
 
while [ $n -gt 0 ]
do
    sd=$(( $n % 10 )) 
    n=$(( $n / 10 ))  
    rev=$( echo ${rev}${sd} ) 
done
 
if [ $on -eq $rev ]
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
read
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
#24 - Write a shell script where you accept a character and you have to echo message whether the entered character is a small case, capital case or a digit or a special symbol. Display error message if more than one character is entered.
while true
do
printf '\nenter a character: '
read char

count=$(echo -n "$char" | wc -c)
[ $count -gt 1 ] && printf '\nYou entered more than one character' && read && exit 1 


case $char in
  ([A-Z]) echo uppercase letter;;
  ([a-z]) echo lowercase letter;;
  ([0-9]) echo decimal digit;;
  (*) echo Special Character;;
  
esac
done

#25 - Write a shell script where you accept a word and echo the message
# a)	Whether the word begins with vowel, consonant or a digit.
# b)	Check whether the word begins with small case vowel or capital case vowel.
# c)	Checks whether the word ends with a digit.

# !/bin/bash
while true
do
printf "\n\nEnter a Word: " 
read char
fc=${char::1}

if [[ "$fc" == *[A-Z]* ]] && [[ "$fc" == *[a-z]* ]]; then
    if [[ "$fc" == *[AEIOUaeiou]* ]]; then
        printf "\nFirst char is vowel"
    else
        printf "\nFirst char is consonant"
    fi 
fi

case $fc in
  ([A-Z]) printf "\nFirst char is in Uppercase\n";;
  ([a-z]) printf "\nFirst char is in Lowercase\n";;
  ([0-9]) printf "\nFirst char is a digit\n";;
  (*) printf "\nFirst char is a special character\n";;
esac

if [[ "${char: -1}" == *[0-9]* ]]; then
    printf "Last char is digit"
else
    printf "Last char is not a digit"
fi

done
#26 - Write a shell script where you check whether
# a)	The word begins with “a” and ends with “t”
# b)	The word begins with “s” and ends with “p”
# c)	Any word with fixed length of 4 characters.
# d)	Display the word starting with “z” and ending with “l”
# !/bin/bash
while true
do
printf "\n\nEnter a Word: " 
read char
len=`expr length "$char"`
echo "length = $len"
if ((len == 4)); then
     printf "\nFixed length 4 char" 
fi

if [[ "${char::1}" == 'a' ]] && [[ "${char: -1}" == 't' ]]; then
    printf "\nThe word begins with a and ends with t"
elif [[ "${char::1}" == "s" ]] && [[ "${char: -1}" == "p" ]]; then
    printf "\nThe word begins with s and ends with p" 
elif [[ "${char::1}" == "z" ]] && [[ "${char: -1}" == "l" ]]; then
    printf "\nWord is $char" 
else
    printf "\nMatched non of the conditions" 
fi
done


# case $fc in
#   ([A-Z]) printf "\nFirst char is in Uppercase\n";;
#   ([a-z]) printf "\nFirst char is in Lowercase\n";;
#   ([0-9]) printf "\nFirst char is a digit\n";;
#   (*) printf "\nFirst char is a special character\n";;
# esac

# if [[ "${char: -1}" == *[0-9]* ]]; then
#     printf "Last char is digit"
# else
#     printf "Last char is not a digit"
# fi
#40. Write a shell script that computes the factorial of a given 
# number.
echo "Enter a number"
read number
temp=$number
fact=1

while [ $number -gt 1 ]
do
    fact=$((fact * number))
    number=$((number - 1))
done
echo "Factorial of $temp : $fact"
read
# Write a shell script that accepts only three arguments from command line. The first is the pattern string, the second is the filename in which the pattern is
# to be searched and the third is the filename in which result is to be stored.

if test $# -ne 3
then echo “Invalid no. of arguments”
else
grep -o $1 $2 | cat > $3
fi
temp=$(head -1 $3)
if [ "$temp" = "$1" ]; then
echo “pattern found : $1”
else
echo “pattern not found”
fi
read
echo "enter no. of integers"
read n
if((n%2==0))
then
    echo "Enter Array elements"
    for((i=0;i<$n;i++))
    do
        read array[i];
    done
    even=1
    odd=0
    for((j=0;j<$n;j++))
    do
        if [ `expr $j % 2` -eq 0 ]
        then
            even=$((array[j]*even))
        else
            odd=$((array[j]+odd))
        fi
    done
    echo "even : $even"
    echo "odd : $odd"
else
    echo "Entered number is odd"
fi

#3 -  Write a shell script that accepts two file names from the command line : 
# a.	copies the first to second file and display the second file.
# b.	append file1 to file2 and display file2.
#!/bin/bash

if test $# -ne 2
then 
    echo "Invaid number of arguments"
    exit
    read
else    
    echo $1 $2
    echo "copying first file to second one . . . . . . "
    cp $1 $2
    cat $2
    echo "#############################################"
    echo "Appending file1 to file2 and printing file2 . . . . . "
    cat $1 >> $2
    cat $2
fi
read
for file in $1; 
do 
mv "$file" "${file%.*}.doc" ; 
done
#!/bin/bash
echo "Before : "
echo "$(ls *.txt)"
export PID=$!
echo "PID  : $PID"
for file in *.txt
do
    mv "$file" "${file%.*}.$PID"
done

echo "After : "
echo "$(ls *.$PID)"
awk 'BEGIN { for(i=1;i<=10;i++) {print "square of",i,"is",i*i;}}'
dir | awk '{ print; total += $4 }; END { print "total size: ",total }'
awk '{ if( $0 ~ / / ) { FS=":"; } else { FS =" "; } print $3 }' $1
awk '{for(i=0;i<2;i++)print}' $1
awk '{print $2,$5;}' $1
i=1
while [ $i -le 5 ]
do
    sq=$(($i*$i))
    echo $sq
    i=$(($i+1))
done
files=( "$(ls)" )
for name in $files
do
    i=\`basename $name txt\`
    mv $name ${i}sh
done 
#!/bin/sh
if [ -d $1 ]
then
        echo "The provided argument is the directory."
                if [ -w "$1" ] 
                        then
                                echo "- file Writable"
                        else
                                echo "- file !Writable"
                fi
                if [ -r $1 ]
                        then
                                echo "- file Readable"
                        else
                                echo "- file !Readable"
                fi 
                if [ -x $1 ] 
                        then
                                echo "- file Executable"
                        else
                                echo "- file !Executable"
                fi
elif [ -f $1 ]
then
        echo "The provided argument is the file."
                if [ -w "$1" ] 
                        then
                                echo "- Writable"
                        else
                                echo "- !Writable"
                fi
                if [ -r $1 ]
                        then
                                echo "- Readable"
                        else
                                echo "- !Readable"
                fi 
                if [ -x $1 ] 
                        then
                                echo "- Executable"
                        else
                                echo "- !Executable"
                fi 
else
        echo "The given argument does not exist on the file system."
fi
#4 - Write a shell script that accepts one file and directory name and move that file to the directory and show recursive listing and long listing.
#!/bin/bash

if test $# -ne 2
then 
    echo "Invaid number of arguments"
else 
    echo $1 $2
if test -f $1
then    
    echo "File found"
else 
    echo "File not found"
read
exit
fi
if test -d $2
then
    echo "Directory found"
else    
    echo "Directory not found"
read
exit
fi
    echo "Moving the file into directory...."
    mv $1 $2
    echo "Printing recursive Listing....."
    ls -R
    echo "Printing Long Listing ...."
    ls -l
fi
read
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
#5 - Write a shell script that asks your name and invite you on current date for a party and append any message to a file name party.
#!/bin/bash
echo "Enter your name: "
read name
date=`date`
echo "Dear $name, you are invited to party on $date">> party.text
echo "###############################"
echo "file data : "
cat party.text
read
#6- Write a shell script 
# a) that reads a file name from command line and changes name to filename.logname.
# b)	Display the number of links and size of the file given as the command line argument.

#!/bin/bash
if test $# -ne 1
then 
    echo "Invaid number of arguments"
else   
    echo $1
    echo "Link of the file ...."
    ls -l $1 | cut -d" " -f2
    echo "Size of the file ...."
    ls -l $1 | cut -d" " -f5
    echo "Changing file name .."
    mv $1 $1.logname
    echo "File name changed ..."
fi
read
#7 -  Write a shell script which displays the date in desired formats :
# 1.	Thursday, 02 July 2020.
# 2.	July 25,2020
# 3.	02-07-2020, Thursday
# 4.	dd-mm-yy
# 5.	dd/mm/yyyy

date +'%A, %d %B %Y'

date +'%B %d, %Y'

date +'%d-%m-%Y, %A'

date +'%d-%m-%Y'

date +'%D'

read
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


# 2 - Write a shell script to : 
# a.	list all the files in your directory in decreasing order of file size.
# b.	Display long list of a directory 
# c.	Display all files starting from letter “a” and ending with letter “t”
cd 1
echo -e "\na. list all the files in your directory in decreasing order of file size."
ls -la
echo -e "\nb. Display long list of a directory."
ls -l
echo -e "\nc. Display all files starting from letter “a” and ending with letter “t”"
ls -d a*t
read
