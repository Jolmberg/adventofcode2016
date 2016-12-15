#!/bin/bash

A="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxy"

cat 4.txt | {
    while read S; do
        N=$(($(echo "$S" | grep -o "[0-9]*") % 26))
        T=${A:$N:26}
        for X in {a..z}; do
            eval "$X=${T:0:1}"
            T=${T:1}
        done
        eval echo $(echo $S | sed 's/\([a-z]\)/$\1/g')
    done
} | grep north
