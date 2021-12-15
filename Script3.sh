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