#!/bin/bash

function flork()
{
    echo $(echo $1 | sed "s/[^$2$3]//g" | sed "s/.*$2$2/0/g" | sed "s/.*$3$3/2/g" | \
           sed "s/\\($2$3\)\|\($3$2\)//g" | sed "s/2$2/1/;s/0$3/1/")
}

cat 2.txt | {
    while read a
    do
        x=$(flork $a L R)
        y=$(flork $a U D)
        echo -n $((3*y+x+1))
    done
}
echo
