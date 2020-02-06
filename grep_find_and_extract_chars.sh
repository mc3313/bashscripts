#!/bin/bash
#Extract 1st 5 characters of each line in a file that contains the string  
# in variable $target_name 
target_name='ME'
grep $target_name SLOG.TXT > tmp1 ;
let count=0 ;
while read line
do
  ((count++)) ;
  echo ${line:0:4}
done < tmp1
echo 'Number of lines found: ' $count
rm -f tmp1 ;
exit ;
