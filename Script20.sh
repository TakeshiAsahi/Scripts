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