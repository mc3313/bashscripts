#!/bin/bash
# copy files from dirOLD to dirNEW
dirNEW='.'
dirOLD='/somedir';
#echo $dirOLD
#cp $dirOLD/readme.txt $dirNEW
cp $dirOLD/zScan_v05.C $dirNEW

cp -r $dirOLD/examples  $dirNEW
