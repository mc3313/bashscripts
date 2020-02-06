#!/bin/bash
#    NOTE: will not work with /sh
# Exeute an application.
# Check periodically if application is done.
# If application is done, then re-execute.
  let count=0 ;
  while [ "$count" -lt 10 ]
  do
    ((count++)) ;
    echo $count ;
  done
  
  echo "Alternative 1:" ;
  
  ci=3 ; cf=8 ;
  for(( cnt=$ci; cnt<$cf+1 ; cnt++))
  do
  	echo " Alt "$cnt
  done
exit;
