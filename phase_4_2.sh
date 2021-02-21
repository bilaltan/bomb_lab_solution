#!/usr/bin/env bash
ANSFILE='answers.txt'
TMPFILE='attempt.txt'

for i in {0..100}; do
    ATTEMPT="${i} 2" 
    cat $ANSFILE > $TMPFILE
    echo  "${ATTEMPT}" >> $TMPFILE
    echo "FOO" >> $TMPFILE    # dummy data 
    echo -n -e "\n[ ] Attempting $ATTEMPT  " 
    ./bomb $TMPFILE | grep 'So you got' 
done
rm -f $TMPFILE