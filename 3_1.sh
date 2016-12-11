#!/bin/bash

cat 3.txt | \
while read a b c;
do
    echo $((a+b>c & a+c>b & b+c>a))
done | grep 1 | wc -l
