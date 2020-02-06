read -p 'Enter Y to syncrhonize from remote to local. ' yn
echo $yn

  if [ "$yn" == "Y" ]; then
    echo 'issue rsync:';
  else
    echo 'no change';
  fi
