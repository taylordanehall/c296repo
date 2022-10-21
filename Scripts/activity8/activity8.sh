#! /bin/sh
#Taylor Hall, 2022

. /home/ec2-user/c296repo/functions.sh

NUMS=()
PRD=1
SUM=0
AVG=0
MAX=0
MIN=2147483647

while [ ${#NUMS[@]} -le 10 ];do
	if [ ${#NUMS[@]} -ge 5 ];then
		echo "Do you want to quit (y/n)"
		read USER_IN
	       	if [ "$USER_IN" = "y" ];then
			break
	        fi	       
	fi
	echo -n "Enter a number: "
	read USER_IN
	doesCont $USER_IN "[^0-9]"
	if [ $? -ne 0 ];then
		NUMS+=($USER_IN)
		SUM=$(($SUM+$USER_IN))
		PRD=$(($PRD*$USER_IN))
		test $USER_IN -gt $MAX && MAX=$USER_IN
	        test $USER_IN -lt $MIN && MIN=$USER_IN
	else
		echo "Enter a number, not anything else!!"
	fi
done

AVG=$(bc <<< "scale=2;$SUM/${#NUMS[@]}")
echo -e "
NUMBERS:\t${NUMS[@]}
PRODUCT:\t$PRD
SUM:\t\t$SUM
AVERAGE:\t$AVG
MINIMUM:\t$MIN
MAXIMUM:\t$MAX"
