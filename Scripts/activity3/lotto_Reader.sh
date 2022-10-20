#! /bin/sh
#Taylor Hall, 2022

FILE=Lotto_Numbers.output.`date +%Y%m%d`
LOTTO_NUM=`cat $FILE`
CHECK=1

while [ $CHECK -eq 1 ];do
	echo "Enter your Lottery numbers, seperated by spaces (eg. 2 34 12 45 21):"
	read USER_IN
	for i in $USER_IN;do
		echo $USER_IN | grep '[a-zA-Z]'
		G=$?
		if [ $i -lt 51 ] && [ $i -gt 0 ] && [ $G -eq 1  ];then
			CHECK=0
		else
			echo "Make sure you enter everything correctly!"
			CHECK=1
			break
		fi
	done
done

if [ "${LOTTO_NUM// /}" = "${USER_IN// /}" ];then
	echo "You win!"
else
	echo "You looose"
fi
