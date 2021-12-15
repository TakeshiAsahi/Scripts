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

