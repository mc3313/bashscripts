#!/bin/bash
# List of files based on a find command
find . -name "M5_params_*.*" > tmp.txt
let count=0
while read line
do
  ((count++)) ;
  echo $line
  rm $line
done < tmp.txt
echo "Found $count instances"
exit;
