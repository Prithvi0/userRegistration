#!/bin/bash -x
printf "Welcome to User Registration\n"
# VALID PATTERN FOR FIRST LETTER CAPITAL AND LENGTH OF ATLEAST 3 CHARACTERS
pattern="^[A-Z]{1}[a-z]{2,}$"
read -p "Enter your first name: " firstName
if [[ "$firstName" =~ $pattern ]]
then
	echo "true"
else
	echo "false"
fi
