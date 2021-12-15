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