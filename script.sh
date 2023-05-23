#!/bin/bash

input=$1
output=$2

if [[ $# -lt 2 || ! -f $input ]]
then
    echo "Не все аргументы введены"
    exit 1
fi

read -p "Введите слово: " word
grep -w -c $word $input > $output
