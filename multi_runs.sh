#!/bin/sh
#Run a series of tasks with control based on string content in file CONTROL
#  If CONTROL has RUN then keep running current task.
#  If             END then start the next task
for((c=1; c<3; c++))
do
  echo RUN>CONTROL ;
  status=$(cat CONTROL) ;
  echo "Start RUN: $c" ;
  #-------------------task(s) to RUN----------------------------------
  chmod u+x task_1.10_PS_PSO.sh; task_1.10_PS_PSO.sh
  #-------------------------------------------------------------------
  while [ $status == "RUN" ]
  do
    sleep 10 ; #delay in seconds
    status=$(cat CONTROL) ;
  done
done
exit;

