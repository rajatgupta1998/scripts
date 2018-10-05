#!/bin/bash

echo "Enter the number"
read var
if [ “$(echo $var | rev)” = “$var” ]
then
echo “\”$var\” is a Palindrome”
else
echo “\”$var\” is not a Palindrome”
fi