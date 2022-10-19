#! /bin/sh
#Taylor Hall, 2022

CHECK=1
LEN=8
echo "Enter your password for validation.
Remember, passwords should include:
at least 8 characters
letters, both capitalized and lowercase
numbers."

while [ $CHECK -eq 1 ];do
	read pass
	if [ `echo $pass | grep "[a-z]"` ] && [ `echo $pass | grep "[0-9]"` ] && [ `echo $pass | grep "[A-Z]"` ] && [ ${#pass} -ge $LEN ];then
		CHECK=0
		echo "Password valid."
	else 
		echo "Pasword invalid."
	fi
done
