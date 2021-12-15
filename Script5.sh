#5 - Write a shell script that asks your name and invite you on current date for a party and append any message to a file name party.
#!/bin/bash
echo "Enter your name: "
read name
date=`date`
echo "Dear $name, you are invited to party on $date">> party.text
echo "###############################"
echo "file data : "
cat party.text
read