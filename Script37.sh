i=1
while [ $i -le 5 ]
do
    sq=$(($i*$i))
    echo $sq
    i=$(($i+1))
done