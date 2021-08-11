#! /bin/bash

while true;
do
    echo "Please enter some words: "
    read INPUT
    if [ $INPUT -ne "" ]
    then
        echo $INPUT > inputs
        
    fi
done