#! /bin/sh
#Taylor Hall, 2022

input="`pwd`/questions.txt"
exec 3<> /dev/stdin

while IFS= read -r line;do
	echo $line | awk -F: '{print $1}'
	echo $line | awk -F: '{print $2}'
	read -u 3 USER_IN
	if [ "$USER_IN" = "`echo $line | awk -F: '{print tolower($3)}'`" ];then
		echo "correct"
	else
		echo "incorrect"
	fi
done < $input
