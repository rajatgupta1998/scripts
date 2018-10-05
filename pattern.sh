#!/bin/bash

echo "Enter the amount of rows you want to display"
read x

echo -e " "

for(( i=1 ;i<=x; i++ ))
    do
        for(( j=1; j<=i ; j++ ))
        do
            echo -n $j 
        done
    echo -e " "
    done