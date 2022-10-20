#! /bin/sh
#Taylor Hall, 2022

OUTPUT="`pwd`/Lotto_Numbers.output.`date +%Y%m%d`"
if test -f "$OUTPUT"; then
	echo "Daily Lottery numbers already exist"
	exit 1
fi

touch $OUTPUT
set -o errexit

echo -n `shuf -i 1-50 -n 5` >> $OUTPUT
echo -n " `shuf -i 1-10 -n 1`" >> $OUTPUT
