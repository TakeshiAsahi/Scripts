#!/bin/bash
echo "Before : "
echo "$(ls *.txt)"
export PID=$!
echo "PID  : $PID"
for file in *.txt
do
    mv "$file" "${file%.*}.$PID"
done

echo "After : "
echo "$(ls *.$PID)"