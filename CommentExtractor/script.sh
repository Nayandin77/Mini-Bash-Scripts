#!/bin/bash

file=$1
comment="//"
output="${file}_comments.txt"

while read line; do
    if [[ $line = *$comment* ]] 
    then
        cut -d "/" -f3 <<< $line >> $output
        
    fi

done <$file