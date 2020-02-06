# Exeute an application.
# Check periodically if application is done.
# If application is done, then re-execute.
  infile="esecslog0.txt" ;
  datetime=$(date +%Y_%m_%d_%H%M_)
  echo "Start "$datetime ;
  runtime=60 ; #time interval (seconds) between runs (e.g. 3600)
  extratime=60 ; #time interval (seconds) for extra time (e.g. 300)

#begin run intervals
  ./fribsep_0.1025.sh
  sleep "$runtime" ;

  let count=1 ;
  while [ "$count" -lt 3 ]
  do
    echo "   run "$count ;
   #----------------------------------- 
    endline=$(tail -1 $infile) ;
    if [ "$endline" = "END" ]
    then
      ((count++)) ;
      echo "END ecountered. Saving last result and restarting app."
      datetime=$(date +%Y_%m_%d_%H%M_) ;
      echo $datetime ;
      cp "NEW.dat" $datetime"NEW.dat"
      ./fribsep_0.1025.sh  
      sleep "$runtime" ;
    else
      echo "endline= " $endline ;
      sleep "$extratime" ;
    fi
   #--------------------------------end
    
  done
exit;
