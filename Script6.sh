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