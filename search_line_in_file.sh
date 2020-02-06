#!/bin/sh
#Read all lines from file 'tmp'
while read LINE; 
  do
    tag=${LINE:0:4};
    if [ $tag == "OBJ=" ]; then echo $LINE ; fi
  done < tmp
