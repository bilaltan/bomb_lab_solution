#!/usr/bin/env bash
ANSFILE='answers.txt'
TMPFILE='attempt.txt'

for i in {0..10}; do
	for k in {0..200}; do
    ATTEMPT="$i $k" 
    cat $ANSFILE > $TMPFILE
    echo  "${ATTEMPT}" >> $TMPFILE
    echo "FOO" >> $TMPFILE    # dummy data 
    echo -n -e "\n[ ] Attempting $ATTEMPT  " 
    ./bomb $TMPFILE | grep 'Halfway'
	done
done
rm -f $TMPFILE