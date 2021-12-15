#!/bin/sh
if [ -d $1 ]
then
        echo "The provided argument is the directory."
                if [ -w "$1" ] 
                        then
                                echo "- file Writable"
                        else
                                echo "- file !Writable"
                fi
                if [ -r $1 ]
                        then
                                echo "- file Readable"
                        else
                                echo "- file !Readable"
                fi 
                if [ -x $1 ] 
                        then
                                echo "- file Executable"
                        else
                                echo "- file !Executable"
                fi
elif [ -f $1 ]
then
        echo "The provided argument is the file."
                if [ -w "$1" ] 
                        then
                                echo "- Writable"
                        else
                                echo "- !Writable"
                fi
                if [ -r $1 ]
                        then
                                echo "- Readable"
                        else
                                echo "- !Readable"
                fi 
                if [ -x $1 ] 
                        then
                                echo "- Executable"
                        else
                                echo "- !Executable"
                fi 
else
        echo "The given argument does not exist on the file system."
fi