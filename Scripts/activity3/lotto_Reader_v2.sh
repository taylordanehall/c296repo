#! /bin/sh
#Taylor Hall, 2022

. /home/ec2-user/c296repo/functions.sh

FILE=Lotto_Numbers.output.`date +%Y%m%d`
LOTTO_NUM=`cat $FILE`
NUMS=()

while [ ${#NUMS[@]} -lt 6 ];do
	echo "Enter your numbers, one at a time. Current Numbers: ${NUMS[@]}"
	read i
	if [ $i -lt 51 ] && [ $i -gt 0 ] && ! doesCont $i "[^0-9]";then
		NUMS+=($i)
	else
		echo "Make sure you enter everything correctly!"
	fi
done

nums="${NUMS[@]}"
if [ "${LOTTO_NUM// /}" = "${nums// /}" ];then
	echo "You win!"
else
	echo "You looose"
fi
