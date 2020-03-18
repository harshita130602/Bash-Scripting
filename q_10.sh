#!/bin/bash
mysort(){
    for((i=${#array[@]}-1;i>=0; i--)); do
        for((j=1;j<=$i; j++)); do
            if [[ ${array[j-1]} -gt ${array[j]} ]]; then
                temp="${array[j-1]}"
                array[j-1]="${array[j]}"
                array[j]="$temp"
            fi
        done
    done
}
read -a array
mysort $array
printf '%s ' "${array[@]}"
printf '\n'
