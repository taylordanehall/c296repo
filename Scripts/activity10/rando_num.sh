#! /bin/sh
#Taylor Hall, 2022

. /home/ec2-user/c296repo/functions.sh

cParam $# 2
filexist $1
T=$2

while [ $T -ne 0 ];do
	echo $RANDOM >> $1
	((T--))
done

