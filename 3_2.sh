#!/bin/bash

(cat 3.txt | sed 's/  */x/g' | cut -d x -f 2;
cat 3.txt | sed 's/  */x/g' | cut -d x -f 3;
cat 3.txt | sed 's/  */x/g' | cut -d x -f 4) | \
while read a;
do
    read b
    read c
    echo $((a+b>c & a+c>b & b+c>a))
done | grep 1 | wc -l
