#24 - Write a shell script where you accept a character and you have to echo message whether the entered character is a small case, capital case or a digit or a special symbol. Display error message if more than one character is entered.
while true
do
printf '\nenter a character: '
read char

count=$(echo -n "$char" | wc -c)
[ $count -gt 1 ] && printf '\nYou entered more than one character' && read && exit 1 


case $char in
  ([A-Z]) echo uppercase letter;;
  ([a-z]) echo lowercase letter;;
  ([0-9]) echo decimal digit;;
  (*) echo Special Character;;
  
esac
done

