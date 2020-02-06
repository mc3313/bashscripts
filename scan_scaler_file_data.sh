#
dirpath="/daqproj/operations/a1900/experiment/" ;
scl_dir="/user/a1900/a1900scaler/" ;
echo $dirpath ;
cnt0=5953 ;
cnt1=6016 ;
# Create file with select scaler file info
run_list_file='_runlist.txt' ;
cnt=$cnt0 ; #--prepare and start loop
while [ $cnt -le $cnt1 ]
do
  dir_name='run'$cnt ;
  scl_file='scl'$cnt'.txt' ;
  read_script='read'$cnt ;
  echo $cnt' '$(head -2 $scl_dir$scl_file) >> $run_list_file ;
  cnt=$(( $cnt + 1 )) ;
done
