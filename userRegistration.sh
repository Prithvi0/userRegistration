#!/bin/bash -x
printf "Welcome to User Registration\n"
# VALID PATTERN FOR FIRST LETTER CAPITAL AND LENGTH OF ATLEAST 3 CHARACTERS
pattern="^[A-Z]{1}[a-z]{2,}$"
read -p "Enter your first name: " firstName
read -p "Enter your last name: " lastName
if [[ $firstName =~ $pattern && $lastName =~ $pattern ]]
then
	printf "Both first name and last name are valid\n"
elif [[ $firstName =~ $pattern && ! $lastName =~ $pattern ]]
then
	printf "Only first name is valid\n"
elif [[ ! $firstName =~ $pattern && $lastName =~ $pattern ]]
then
	printf "Only last name is valid\n"
else
	printf "Both first name and last name are invalid\n"
fi
