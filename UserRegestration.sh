#!/bin/bash
#This program for validating user registration process.
echo "Welcome to user registration process."
read -p "Please enter your first name: " Name
read -p "Please enter your Last Name: " Last
#Validating last name
pat="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"
if [[ $First =~ $pat && $Last =~ $pat ]]
then
	echo "Valiid_Full_Name"
else
	echo "Invalid_Full_Name"
fi
