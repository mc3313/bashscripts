#2011-07-14, Portillo
#Script that was used to copy the scaler files from directory $scl_dir 
# to $targ_dir
# scaler files to the experiment space, /evtdata/e10031
#
#--Start of parameters specification---------
scl_dir="/user/a1900/a1900scaler/" ;
#targ_dir="/evtdata/e10031/" ;
targ_dir="/projects/temp/e10031/" ;
echo $scl_dir ;
cnt0=6099 ;
cnt1=6126 ;
#--End of parameters---------
cnt=$cnt0 ; #--prepare and start loop
list_of_scl_files='' ;
while [ $cnt -le $cnt1 ]
do
  #build the string with list of files
  scl_file='scl'$cnt'.txt' ;
  list_of_scl_files=$list_of_scl_files','$scl_file ;
  cnt=$(( $cnt + 1 )) ;
done
list_of_scl_files=${list_of_scl_files:1} ; #remove 1st character
echo $list_of_scl_files ;
scp -rp a1900@rubidium:$scl_dir\{$list_of_scl_files\} $targ_dir
chmod u+rw $targ_dir/scl*
#-----------------e10031 notes-----
# 6017-6050  Kr data
# 6099-6126  82Se data
# 5953-6016  U data
