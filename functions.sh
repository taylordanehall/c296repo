#! /bin/sh
#Taylor hall, 2022

cParam () {
	if [ $1 -ne $2 ]; then
		echo "err: you need to pass $2 commands"
		exit 1
	fi
}

filexist () {
	FILE="${PWD}/${1}"
	if [ -f $FILE ];then
		echo "$1 exists"
	else
		touch $FILE
	fi
}

doesCont () {
	echo $1 | grep -q $2
	G=$?
	if [ $G -eq 0 ];then
		return 0
        else
		return 1
	fi 
}
