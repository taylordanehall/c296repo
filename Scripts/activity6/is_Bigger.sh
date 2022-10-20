#! /bin/sh
#Taylor Hall, 2022

. /home/ec2-user/c296repo/functions.sh
. /home/ec2-user/c296repo/Scripts/activity6/act6_functions.sh

par=$#
cParam $par 2
ARR=($1 $2)

for i in ${ARR[@]};do
	echo "$i" | grep -q "[^0-9]"
	G=$?
	if [ $G -eq 0 ];then
		echo "err: letters aren't numbers!"
		exit 1
	fi
done

if [ ${ARR[0]} -lt ${ARR[1]} ];then
	echo "${ARR[1]} is greater than ${ARR[0]}"
elif [ ${ARR[0]} -gt ${ARR[1]} ];then
	echo "${ARR[0]} is greater than ${ARR[1]}"
else
        echo "${ARR[0]} is equal to ${ARR[1]}"
fi

diff $1 $2
