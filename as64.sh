#!/bin/bash
if [ -z $1 ]; then
    echo "Usage: ./as64.sh <asMainFile>(no extension)"
    exit 
fi 

if [ ! -e "$1.s" ]; then 
    echo "Error: $.s not found."
    echo "Note, do not enter file extensions."
    exit 
fi 

as $1.s -o $1.o 
ld -g -o $1 $1.o 
./$1
echo $?