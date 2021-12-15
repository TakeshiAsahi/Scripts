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