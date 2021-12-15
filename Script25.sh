#25 - Write a shell script where you accept a word and echo the message
# a)	Whether the word begins with vowel, consonant or a digit.
# b)	Check whether the word begins with small case vowel or capital case vowel.
# c)	Checks whether the word ends with a digit.

# !/bin/bash
while true
do
printf "\n\nEnter a Word: " 
read char
fc=${char::1}

if [[ "$fc" == *[A-Z]* ]] && [[ "$fc" == *[a-z]* ]]; then
    if [[ "$fc" == *[AEIOUaeiou]* ]]; then
        printf "\nFirst char is vowel"
    else
        printf "\nFirst char is consonant"
    fi 
fi

case $fc in
  ([A-Z]) printf "\nFirst char is in Uppercase\n";;
  ([a-z]) printf "\nFirst char is in Lowercase\n";;
  ([0-9]) printf "\nFirst char is a digit\n";;
  (*) printf "\nFirst char is a special character\n";;
esac

if [[ "${char: -1}" == *[0-9]* ]]; then
    printf "Last char is digit"
else
    printf "Last char is not a digit"
fi

done
