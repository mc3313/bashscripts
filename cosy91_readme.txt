Scripts used for cosy

multi_runs.sh
 -Run cosy or other program a set number of time using a loop.
  When a run is ongoing the file CONTROL string RUN.
   The string is set to END when the application has finished.
   The script then launches a new run.

multi_run_scan.sh
 -Used to run cosy on a number of resulting fitted NEW*.dat files based 
  on a generated list of names. Useful after using mult_runs.sh to execute 
  a fit many times.
