# Write a shell script that accepts only three arguments from command line. The first is the pattern string, the second is the filename in which the pattern is
# to be searched and the third is the filename in which result is to be stored.

if test $# -ne 3
then echo “Invalid no. of arguments”
else
grep -o $1 $2 | cat > $3
fi
temp=$(head -1 $3)
if [ "$temp" = "$1" ]; then
echo “pattern found : $1”
else
echo “pattern not found”
fi
read