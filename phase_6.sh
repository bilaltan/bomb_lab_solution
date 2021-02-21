#!/usr/bin/env bash
ANSFILE='answers.txt'
TMPFILE='attempt.txt'



for a in {0..9}; do
 for b in {0..9}; do
  for c in {0..9}; do
   for d in {0..9}; do
    for e in {0..9}; do
     for f in {0..9}; do

      ATTEMPT="$a $b $c $d $e $f" 
      cat $ANSFILE > $TMPFILE
      echo  "${ATTEMPT}" >> $TMPFILE
      echo "FOO" >> $TMPFILE    # dummy data 
      echo -n -e "\n[ ] Attempting $ATTEMPT  " 
      ./bomb $TMPFILE | grep 'Congratulations! '

      done
     done
    done
   done
  done
 done