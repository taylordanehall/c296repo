#! /bin/sh
#Taylor Hall, 2022"

for filexe in *
do
	if [ ${filexe##*.} ==  "log" ]
	then
		mv $filexe $filexe.`date +%y%m%d`	
	else
		continue
	fi
done
