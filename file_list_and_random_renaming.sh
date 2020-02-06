#!/bin/bash
#1) Randomize start of names of files (e.g. music file names)
#2) Remove leading characters to "unrandomize" file names
#3) Replace spaces in file names with underscores

#Generate list of files in target directory
fname="list"
oldname=""
newname=""
ls -1 *.mp3 > list ;



#4) Replace and remove unwanted strings from names
#  a) remove spaces
find $1 -name "*.*" -type f -print0 | \
  while read -d $'\0' f; do mv -v "$f" "${f// /_}"; done
#  b) enforce .mp3 at end of names
find $1 -name "*.MP3" -type f -print0 | \
  while read -d $'\0' f; do mv -v "$f" "${f//.MP3/.mp3}"; done
find $1 -name "*.Mp3" -type f -print0 | \
  while read -d $'\0' f; do mv -v "$f" "${f//.Mp3/.mp3}"; done
exit;


#1) Randomize start of names
exec 4<$fname
count=0
while [[ $eof1 -eq 0 ]]
do
  if read oldname <&4; then
    let count++;
    rand=$RANDOM
    newname=${rand:0:3}_$oldname
    echo $count $oldname $newname
    mv $oldname $newname
  else
    eof1=1
  fi
done
exec 4</dev/null
echo "end randomizing file names in $fname"
exit;


#2) Remove leading characters from files names
exec 4<$fname
count=0
while [[ $eof1 -eq 0 ]]
do
  if read oldname <&4; then
    let count++;
    pos1=$(expr index $oldname "_") ; # position of 1st instance of "_"
    pos2=${#oldname} ;                # string length
    #echo $pos1  $pos2  $oldname
    newname=${oldname:pos1:pos2}
    echo $newname ;
    mv $oldname $newname
  else
    eof1=1
  fi
  done
exec 4</dev/null
echo "end randomizing file names in $fname"
exit;

#3) Remove spaces from file all files names. Functions as one-liner.
find $1 -name "* *.mp3" -type f -print0 | \
  while read -d $'\0' f; do mv -v "$f" "${f// /_}"; done
echo "end removing spaces from fnames in $fname"
exit;
