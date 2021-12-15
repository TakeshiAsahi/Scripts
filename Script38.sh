files=( "$(ls)" )
for name in $files
do
    i=\`basename $name txt\`
    mv $name ${i}sh
done 