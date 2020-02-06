#scp a directory with .evt data
dirpath="/daqproj/operations/a1900/experiment/" ;
echo $dirpath ;
cnt0=5953 ;
dir_name='run'$cnt0 ;
#--To current directory:
#scp -rp a1900@rubidium:$dirpath$dir_name .
#--To target directory :
targdir="/projects/temp/e10031/" ;
scp -rp a1900@rubidium:$dirpath$dir_name $targdir
#---------------------------------------------------
chmod u+rw $dir_name
#--create a script for reading with SpecTcl
read_script='read'$cnt0 ;
echo 'clear -all' > $read_script
echo 'attach -file '$(ls $dir_name/*.evt) >> $read_script
echo 'start' >> $read_script
