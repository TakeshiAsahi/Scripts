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