#!/bin/bash
#Read names of files (or directories) from a file
# Do an operation with/on each
#infile='repeat';
let count=0 ;
while read line
do
  ((count++)) ;
  echo $line
  mv $line rep$line
done < repeats.txt
echo Found $count instances
exit ;
