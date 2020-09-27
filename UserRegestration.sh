#!/bin/bash
#This program for validating user registration process.
echo "Welcome to user registration process."
read -p "Please enter your first name: " First
read -p "Please enter your Last Name: " Last
read -p "Enter The Email_ID: " Email_Address
#Setting rules for first and last name of user.
Name_pat="^[[:upper:]]{1}[a-z A-Z 0-9]{2}$"
#Setting rules for user email address
Email_pat="^[a-z]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"
if [[ $First =~ $Name_pat && $Last =~ $Name_pat && $Email_Address =~ $Email_pat ]]
then
	echo "Valid_Information"
else
	echo "Invalid_Information"
fi
