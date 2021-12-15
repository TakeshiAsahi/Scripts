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