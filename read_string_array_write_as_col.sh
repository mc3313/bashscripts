#!/bin/bash

#--- Read file L19THZ.data into an array and write output of needed column
declare -a ARRAY
let count=0
while read line
do
  ((count++))
  #echo "$line" >> temp
  ARRAY[$count]=$line ;
  #varname=$(echo $line | tr " " "\n")
  #echo $varname >> temp
  echo $count = $line ; #show input of line read
done < tmp
exit ;
