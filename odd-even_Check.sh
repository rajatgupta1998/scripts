#!/bin/bash

echo "enter var1"
read var1
var2=$(($var1%2))
if [ $var2 -eq 0 ]
then
echo "Even"
else
echo "Odd"
fi
