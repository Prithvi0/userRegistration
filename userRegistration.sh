#!/bin/bash -x
printf "Welcome to User Registration\n"

# FUNCTION FOR FIRST AND LAST NAME
function firstLastNameValid () {
	pattern="^[A-Z]{1}[a-z]{2,}$" # VALID PATTERN FOR FIRST LETTER CAPITAL AND LENGTH OF ATLEAST 3 CHARACTERS
	# READING FIRST AND LAST NAMES FROM THE USER INPUT
	read -p "Enter your first name: " firstName
	read -p "Enter your last name: " lastName
	# CONDITIONS FOR VALID FIRST AND LAST NAMES
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
}

# FUNCTION FOR GENERAL E-MAIL VALIDATION (Eg. abc.xyz@bl.co.in)
function emailValid () {
	emailPattern="^[a-zA-Z]+[\.]?[a-zA-Z]*\@[a-z]{2,}\.([a-z]{2,4}\.)?[a-z]{2,4}$"		# GENERAL E-MAIL VALIDATION
	read -p "Enter an E-mail to validate: " email
	if [[ $email =~ $emailPattern ]]
	then
		printf "valid e-mail\n"
	else
		printf "invalid e-mail\n"
	fi
}

# CALLING THE FUNCTIONS
firstLastNameValid
emailValid
