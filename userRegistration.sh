#!/bin/bash -x
printf "Welcome to User Registration\n"

# CONSTANTS
COUNTRY_CODE=91

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

# FUNCTION FOR E-MAIL VALIDATION (Eg. abc.xyz@bl.co.in)
function emailValid () {
	emailPattern="^([a-zA-Z0-9_-\.\+]+)@([a-zA-Z0-9_-\.\+]+)\.([a-z]{2,4})$"	# E-MAIL VALIDATION PATTERN
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
	mobileNumberPattern="^[\+]?($COUNTRY_CODE){1}[ ]?[6-9]{1}[0-9]{9}$"		# GENERAL MOBILE NUMBER VALIDATION PATTERN
	read -p "Enter a mobile number to validate: " mobileNumber
	if [[ $mobileNumber =~ $mobileNumberPattern ]]
	then
		printf "Valid mobile number\n"
	else
		printf "In-valid mobile number\n"
	fi
}

# FUNCTION TO VALIDATE PRE-DEFINED PASSWORD
function passwordFormat () {
	passwordLength=".*{8,}$"				# ATLEAST 8 CHARACTERS LONG
	upperCase="[A-Z]+"					# ATLEAST 1 UPPERCASE LETTER
	numeric="[0-9]+"					# ATLEAST 1 NUMERIC
	specialChar="^[A-Za-z0-9]*[@#$%&=_-][A-Za-z0-9]*$"	# EXACT 1 SPECIAL CHARACTER
	read -p "Enter a password of minimum 8 characters: " password
	if [[ $password =~ $passwordLength && $password =~ $upperCase && $password =~ $numeric && $password =~ $specialChar ]]
	then
		printf "Valid password\n"
	else
		printf "Invalid password\n"
	fi
}

# CALLING THE FUNCTIONS
#firstLastNameValid
emailValid
#mobileNumberFormat
#passwordFormat
