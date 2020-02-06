remote_dir=/cygdrive/f/projects/a2400/MP/cosy2014/srcfordev
local_dir=/cygdrive/c/Users/Mauricio/Desktop/_myfiles/cosy2014/srcfordev_rsync_test
#update changed files as needed to remote

file=cosy91.fox

diff $remote_dir/$file $local_dir/$file
echo $file:
  read -p 'Enter Y to syncrhonize from local to remote. ' yn
  echo $yn
  if [ "$yn" == "Y" ]; then
    echo 'issue rsync:';
    newname=$(date +%Y_%m_%d_%H%M_)$file ;
    echo 'copy of old= '$newname ;
    cp $remote_dir/$file $remote_dir/$newname ;
    rsync -avz $local_dir/$file $remote_dir
  else
    echo 'no change';
  fi


exit;

#NOTES
rsync -avz /remote/cosy.fox /local/dir/

