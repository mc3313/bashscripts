#!/bin/bash
#http://www.tldp.org/LDP/abs/html/randomvar.html

#Generate random numbers in range: 0 - 32767 (16 bit integer)
echo $RANDOM

NUM=10
count=0
while [ "$count" -lt $NUM ]
do
  let count++
  rand=$RANDOM
  echo $count  $rand
done

exit;