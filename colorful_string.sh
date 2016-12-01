#!/bin/bash
colorful() {
    enjoy=$1
    output=""
    for k in $( seq 0 `expr ${#enjoy} - 1` )
    do
        num=$(cat /dev/urandom | head -n 10 | cksum | awk -F ' ' '{print $1}')
        rander=`expr ${num} % 7 + 31`
        output=$output"\033[${rander}m${enjoy:$k:1}\033[0m"
    done
    echo -e $output
}

echo `colorful "Colorful but useless.....(and takes a long time)"`
