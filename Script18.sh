#18 - Write a shell script where distance between two cities is input through the keyboard in km. Convert and print this distance in meters, feet, inches and
#cm.

echo "Enter length in KM"
read km
m=$(($km*1000))
cm=$(($m*100))
ft=$(($km*3280))
in=$(($km * 39370))
echo "Distance in meters : $m"
echo "Distance in feets : $ft"
echo "Distance in inches : $in"
echo "Distance in centimeters : $cm"
read

