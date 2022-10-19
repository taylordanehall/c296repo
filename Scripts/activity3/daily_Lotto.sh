#! /bin/sh
#Taylor Hall, 2022

OUTPUT="`pwd`/Lotto_Numbers.output.`date +%Y%m%d`"
if test -f "$OUTPUT"; then
	echo "Daily Lottery numbers already exist"
	exit 1
fi

touch $OUTPUT
set -o errexit

for i in {1..5}
do
	NUMBER=$((1 + $RANDOM % 50))
	echo -n "$NUMBER" >> $OUTPUT
done

echo -n "$((1 + $RANDOM % 10))" >> $OUTPUT
