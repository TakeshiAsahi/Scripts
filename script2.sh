# 2 - Write a shell script to : 
# a.	list all the files in your directory in decreasing order of file size.
# b.	Display long list of a directory 
# c.	Display all files starting from letter “a” and ending with letter “t”
cd 1
echo -e "\na. list all the files in your directory in decreasing order of file size."
ls -la
echo -e "\nb. Display long list of a directory."
ls -l
echo -e "\nc. Display all files starting from letter “a” and ending with letter “t”"
ls -d a*t
read
