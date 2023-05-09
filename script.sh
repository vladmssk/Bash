#!/bin/bash

input=$1
output=$2
word=$3

if [[ ! -f $input || $output == "" || $word == "" ]]
then
    echo "Не все аргументы введены"
    exit 1
fi

grep -w -c $word $input > $output
