#!/bin/bash

cat 7.txt | sed 's/\(.\)\1\1\1/\1_ ,\1/g' | \
grep -v '\[[^]]*\([^]]\)\([^]]\)\2\1[^]]*\]' | \
grep '\(.\)\(.\)\2\1' | wc -l