#!/bin/bash
#This program for validating user registration process.
echo "Welcome to user registration process."
read -p "Please enter your first name: " First
read -p "Please enter your Last Name: " Last
read -p "Please Enter The Email_ID: " Email_Address
read -p "Please Enter mobile Number: " Mobile_Number
read -p "Please Enter Password: " Password
#Setting rules for first and last name of user.
Name_pat="^[[:upper:]]{1}[a-z A-Z 0-9]{2}$"
#Setting rules for user email address
Email_pat="^[a-z]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"
#Validating mobile number
Mob_pat="[0-9]{2}[[:space:]|(0-9)][0-9]{10}$"
#Validating password
Password_pat="^([0-9 & A-Z a-z] ?[@!*&^%.]{1}]){8,}"
#Special_char=$(($(tr -d '[[:alnum:]]' <<< $Password | wc -m)-1))

if [[ $First =~ $Name_pat && $Last =~ $Name_pat && $Email_Address =~ $Email_pat && $Mobile_Number =~ $Mob_pat ]]
then
	if [[ $Password =~ $Password_pat && $Password =~ [[:upper:]] && $Password =~ [[:lower:]] ]]
	then
		echo "Valid_Information"
	else
		echo "Invalid_Information"
	fi
fi
