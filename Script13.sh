#13 -  Write a shell script that will take an input file and remove identical lines (or duplicate lines from the file)  
if [ $# -eq 0 ]
then
echo "no arguments"
else
echo "---------the original file is below ------"
cat $1
echo
echo "------file after removing duplicates------"
echo
sort $1 | uniq > removeDupes.txt
cat removeDupes.txt
fi
read