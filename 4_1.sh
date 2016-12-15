#!/bin/bash

echo $(($(cat 4.txt | {
    while read a
    do
        b=$(echo $a | head -c -8 | grep -o '[a-z]' | sort | uniq -c | sort -k 1rn,2 | grep -o [a-z] | head -n 5 | tr -d "\n")
        echo $a | grep -o "[0-9]*.$b.$" | sed 's/[^0-9]\+/+/' | tr -d "\n"

    done
})0))
