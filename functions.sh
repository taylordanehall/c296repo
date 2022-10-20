#! /bin/sh
#Taylor hall, 2022

cParam () {
	if [ $1 -ne $2 ]; then
		echo "err: you need to pass $2 commands"
		exit 1
	fi
}

