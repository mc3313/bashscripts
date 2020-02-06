#2011-07-13, Portillo
# Script used to list the titles for a range of scaler files. 
# The loop can also be used to extract info from .evt or other files; e.g. 
#  for files in the a1900 space.
#
#--Start of parameters specification---------
dirpath="/daqproj/operations/a1900/experiment/" ;
scl_dir="/user/a1900/a1900scaler/" ;
#--End of parameters---------
echo $dirpath ;
cnt0=6099 ;
cnt1=6126 ;
# Create file with select scaler file info
run_list_file='scl_list.txt' ;
cnt=$cnt0 ; #--prepare and start loop
while [ $cnt -le $cnt1 ]
do
  dir_name='run'$cnt ;
  scl_file='scl'$cnt'.txt' ;
  read_script='read'$cnt ;
  echo $cnt' '$(head -2 $scl_dir$scl_file) >> $run_list_file ;
  cnt=$(( $cnt + 1 )) ;
done
