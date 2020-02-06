#!/bin/bash
#kill instances according to names from listing using 'ps -u portillo
ps -u portillo > ps_list.txt
target_name='cosy'
echo ' Remove jobs with name:' $target_name
grep $target_name ps_list.txt > tmp1 ;
let count=0 ;
while read line
do
  ((count++)) ;
  echo ${line:0:6}
  kill -9 ${line:0:6}
done < tmp1
echo 'Number of kill events: ' $count
#> tmp1 ;
exit ;
