#!/bin/bash
#some variables like temp have been initialised to check some test cases and are not useful for logic
ans=""
declare -i num=0;
touch file.txt
ping -c $1 www.google.com >> file.txt
readarray -t output < file.txt
for j in "${output[@]}"; 
do
	touch temp.txt
    if [ $num -eq 0 ]; 
    then
	temp2=0
        echo $j
	temp2=$main
        num=num+1
	temp=100
        continue
    elif [ $num -gt $1 ]; 
    then
        echo $j
	temp=0
        num=num+1
	main=$temp
        continue
    fi
    unlink temp.txt
    echo "$num."$j
    num=num+1
done
unlink file.txt
touch temp.txt
rm temp.txt

