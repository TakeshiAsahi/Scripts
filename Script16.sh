#16 - Write a shell script using concept of position parameters which copies one file and display destination file and it should also contain an error message if the source file does not exist. 
if test $# -eq 2
then
if test -f $2
then
echo "File $2 already exists" 
elif test -f $1
then
cp $1 $2
echo "Copying from file1 to file2"
echo "contents of file is being copied" 
else 
echo "file $1"
fi
else
echo "working successfully"
fi 
read