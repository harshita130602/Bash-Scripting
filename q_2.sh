#!/bin/bash
find . -type d -printf "%p %s B\n"
echo
tmp=`find . -type d`
while read a
do
    while read p n l1 l2 size d t n
    do
tmp1=`ls -ldh $a/`
    sz=`find $a -maxdepth 1| wc -l`
    echo "${a}        ${sz}"
    done <<< $tmp1
done <<< $tmp