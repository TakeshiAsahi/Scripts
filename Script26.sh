#26 - Write a shell script where you check whether
# a)	The word begins with “a” and ends with “t”
# b)	The word begins with “s” and ends with “p”
# c)	Any word with fixed length of 4 characters.
# d)	Display the word starting with “z” and ending with “l”
# !/bin/bash
while true
do
printf "\n\nEnter a Word: " 
read char
len=`expr length "$char"`
echo "length = $len"
if ((len == 4)); then
     printf "\nFixed length 4 char" 
fi

if [[ "${char::1}" == 'a' ]] && [[ "${char: -1}" == 't' ]]; then
    printf "\nThe word begins with a and ends with t"
elif [[ "${char::1}" == "s" ]] && [[ "${char: -1}" == "p" ]]; then
    printf "\nThe word begins with s and ends with p" 
elif [[ "${char::1}" == "z" ]] && [[ "${char: -1}" == "l" ]]; then
    printf "\nWord is $char" 
else
    printf "\nMatched non of the conditions" 
fi
done


# case $fc in
#   ([A-Z]) printf "\nFirst char is in Uppercase\n";;
#   ([a-z]) printf "\nFirst char is in Lowercase\n";;
#   ([0-9]) printf "\nFirst char is a digit\n";;
#   (*) printf "\nFirst char is a special character\n";;
# esac

# if [[ "${char: -1}" == *[0-9]* ]]; then
#     printf "Last char is digit"
# else
#     printf "Last char is not a digit"
# fi