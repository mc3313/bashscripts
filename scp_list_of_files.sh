#
#Note: ls -ltrh /evtdata/e10031/* | grep r*.evt   (will list files too)
dirpath="/daqproj/operations/a1900/experiment/" ;
scl_dir="/user/a1900/a1900scaler/" ;
echo $dirpath ;
cnt0=5953 ;
cnt1=6016 ;
cnt1=5954 ;
#
cnt=$cnt0 ; #--prepare and start loop
list_of_run_dirs='' ;
list_of_scl_files='' ;
while [ $cnt -le $cnt1 ]
do
  #build the string with list of files
  run_dir_name='run'$cnt ;
  scl_file='scl'$cnt'.txt' ;
  list_of_run_dirs=$list_of_run_dirs','$run_dir_name ;
  list_of_scl_files=$list_of_scl_files','$scl_file ;
  cnt=$(( $cnt + 1 )) ;
done
list_of_run_dirs=${list_of_run_dirs:1} ; #remove 1st character
list_of_scl_files=${list_of_scl_files:1} ;
echo $list_of_run_dirs ;
echo $list_of_scl_files ;
scp -rp a1900@rubidium:$dirpath\{$list_of_run_dirs\} .
chmod u+rw run*
scp -rp a1900@rubidium:$scl_dir\{$list_of_scl_files\} .
chmod u+rw scl*
#
# Create read scripts for use with SpecTcl
run_list_file='_runlist.txt' ;
cnt=$cnt0 ; #--prepare and start loop
while [ $cnt -le $cnt1 ]
do
  dir_name='run'$cnt ;
  scl_file='scl'$cnt'.txt' ;
  read_script='read'$cnt ;
  echo $cnt' '$(head -2 $scl_file) >> $run_list_file ;
  echo '# '$(head -2 $scl_file) > $read_script ;
  echo 'clear -all'             >> $read_script ;
  echo '#attach -file '$(ls $dirpath$dir_name/*.evt) >> $read_script
  echo 'attach -file '$(ls $dir_name/*.evt) >> $read_script
  echo 'start'                  >> $read_script
  cnt=$(( $cnt + 1 )) ;
done
