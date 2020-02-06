#!/bin/sh
#--------- Script written but not acually used in the end
# This script allows the .fox file in the current directory to run with cosy 
#   executable files that reside in a different directory.
#  The generated output will be put in the current directory.
#
start_time=$(date) ;
#-----define the directory where the cosy executable resides-------
fox_file=$1 ; # set variable $fox_file to fist input after command
if [ $HOSTTYPE = 'x86_64' ]; 
then
#cosypath="/projects/a2400/cosy8fortran64" ;
#cosypath="/projects/a2400/cosy8MPdev" ;
 cosypath="/projects/a2400/cosy8fortran_new64" ;
else
 cosypath="/projects/a2400/cosy8fortran_new32" ;
fi
#cosypath="/projects/a2400/cosy8fortran32" ;
#cosypath="/projects/a2400/MP/cosy9anl_MP" ;
echo $cosypath

#------------------ prepare name of start file: $no_fox -----------------
#prepare name of start file 
no_fox=$( echo $fox_file | sed 's/.fox//' ) ;

#------------------ modify $no_fox to new files and launch them  ---------
for((c=9; c<12; c++))
do
  printf -v newname "$no_fox%04d.fox" $c;
  prep_fribsep.sh $no_fox.fox $newname;
   #prepare foxyinp.dat file to run new file
    no_fox=$( echo $fox_file | sed 's/.fox//' ) ;
    foxyinp='foxyinp.dat' ; rm -f $foxyinp ; echo 'new' >> $foxyinp ;
    echo 'update... $foxyinp' ;
    sed  '1i '"$no_fox"'' $foxyinp > temp ;
    mv temp $foxyinp ;
  echo $cosypath/cosy ;
  nohup nice $cosypath/cosy > nohup_out/$newname.txt &
  #nice $cosypath/cosy
  sleep 300;
done

stop_time=$(date)
echo 'start: '$start_time
echo 'stop:  '$stop_time
