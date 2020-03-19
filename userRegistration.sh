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
	emailPattern="^[a-zA-Z]+[\.]?[a-zA-Z]*\@[a-z]{2,}\.([a-z]{2,4}\.)?[a-z]{2,4}$"	# GENERAL E-MAIL VALIDATION PATTERN
	read -p "Enter an E-mail to validate: " email
	if [[ $email =~ $emailPattern ]]
	then
		printf "valid e-mail\n"
	else
		printf "invalid e-mail\n"
	fi
}

# FUNCTION TO VALIDATE PRE-DEFINED MOBILE FORMAT (Eg. 91 9999999999)
function mobileNumberFormat () {
	mobileNumberPattern="^[\+]?(91){1}[ ]?[6-9]{1}[0-9]{9}$"	# GENERAL MOBILE NUMBER VALIDATION PATTERN
	read -p "Enter a mobile number to validate: " mobileNumber
	if [[ $mobileNumber =~ $mobileNumberPattern ]]
	then
		printf "Valid mobile number\n"
	else
		printf "In-valid mobile number\n"
	fi
}

# FUNCTION TO VALIDATE PRE-DEFINED PASSWORD RULE1 - MINIMUM 8 CHARACTERS
function passwordFormat () {
	passwordFormat="^.{8,}$"	# MINIMUM 8 CHARACTERS VALIDATION PATTERN
	read -p "Enter a password of minimum 8 characters: " password
	if [[ $password =~ $passwordFormat ]]
	then
		printf "Valid password\n"
	else
		printf "Invalid password\n"
	fi
}

# CALLING THE FUNCTIONS
firstLastNameValid
emailValid
mobileNumberFormat
passwordFormat
