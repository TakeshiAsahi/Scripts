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