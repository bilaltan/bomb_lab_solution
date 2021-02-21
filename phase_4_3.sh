#!/usr/bin/env bash
ANSFILE='answers.txt'
TMPFILE='attempt.txt'

for i in {0..1000}; do
	for x in {0..1000}; do
		for k in {0..3}; do
    ATTEMPT="$i $x $k" 
    cat $ANSFILE > $TMPFILE
    echo  "${ATTEMPT}" >> $TMPFILE
    echo "FOO" >> $TMPFILE    # dummy data 
    echo -n -e "\n[ ] Attempting $ATTEMPT  " 
    ./bomb $TMPFILE | grep 'So you got'
		 
	done
done
rm -f $TMPFILE