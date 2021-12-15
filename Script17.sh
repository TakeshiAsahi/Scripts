#17 - Write a shell script to find area and perimeter of rectangle.
echo "Enter length"
read l
echo "Enter breadth"
read b

area=`expr $l \* $b`
peri=`expr $l \* 2 + $b \* 2`
echo "The area of the rectangle is $area"
echo "The Perimeter of the rectangle is $peri"
read