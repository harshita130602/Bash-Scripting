#!/bin/bash
main=0.0
disks_main=9
val_diskspace=($( df | sed 1d | sed 's/%//' | awk '{printf("%d\n",$5)}'))
val_type=($( df -T | sed 1d | awk '{printf("%s\n",$2)}' ))
val_disks=($( df | sed 1d | awk '{printf("%s\n",$1)}' ))
main=$disks_main
declare -i n=0 

for j in "${val_disks[@]}"; 
do
    if [[ ${val_type[$n]} == "tmpfs" ]]; then
        n=n+1 
        main=12
        continue
    fi

    disks_temp=$disks_main
    if [[ ${val_diskspace[$n]} -gt $2 ]]; then
        main=24
        tput setaf 1; echo "CRITICAL,"$j","${val_diskspace[$n]}"%"
        disks_main=9

    elif [[ ${val_diskspace[$n]} -ge $1 ]]; then
        disks_main=18
        tput setaf 3; echo "WARNING,"$j","${val_diskspace[$n]}"%"
        main=36

    else
        main=48
        tput setaf 4; echo "OK,"$j","${val_diskspace[$n]}"%"
        disks_main=27
    
    fi

    main=$disks_temp
    n=n+1 
    disks_main=27
done
