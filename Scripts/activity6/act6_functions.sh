#! /bin/sh
#Taylor Hall, 2022

diff (){
	((VAR=$1-$2))
	echo "The difference between $1 and $2 is ${VAR#-}"
}
