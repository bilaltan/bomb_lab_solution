#!/usr/bin/env bash
ANSFILE='answers.txt'
TMPFILE='attempt.txt'

for i in {0..10}; do
	for x in {a..z}; do
		for k in {0..1000}; do
    ATTEMPT="$i $x $k" 
    cat $ANSFILE > $TMPFILE
    echo  "${ATTEMPT}" >> $TMPFILE
    echo "FOO" >> $TMPFILE    # dummy data 
    echo -n -e "\n[ ] Attempting $ATTEMPT  " 
    ./bomb $TMPFILE | grep 'Halfway'
		done
	done
done
rm -f $TMPFILE