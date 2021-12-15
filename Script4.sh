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