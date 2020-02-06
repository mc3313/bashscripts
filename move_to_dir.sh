#!/bin/bash
# chmod +x move_to_dir.sh; move_to_dir.sh output
dir=$1
if [ -d $dir ]; then
  echo "directory exists: $dir"
  datetime=$(date +%Y_%m_%d_%H%M)
  dir=output$datetime 
  #Optional: dir=out$RANDOM
mkdir $dir
else
  mkdir $dir
fi
echo "-- Output moved to directory: $dir"

mv c*.pdf $dir
mv ENTR_*.* $dir
mv EXIT_*.* $dir
mv *.COSYFLD $dir
mv *.cfg.* $dir
mv MSS*.cfg $dir
mv ROOT_*.txt $dir
mv TEST_FIELD*.* $dir
echo "-- Output moved to directory: $dir"