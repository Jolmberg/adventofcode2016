#!/bin/bash

for c in {0..7}; do
    cat 6.txt | {
        while read a; do
            echo ${a:c:1}
        done
    } | sort | uniq -c | sort -rn | grep -m 1 -o '[^0-9 ]'
done | tr -d "\n"
echo
