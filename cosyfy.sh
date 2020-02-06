 #echo 'string input ='$1 ;
 #if [ -d $1 ]
 #fi
indir=$1 ;
if [ -d $indir ]; then
  echo 'Copying cosy files to ...'$indir ; 
  cp -rf *.bin *.sh *.plt ../fr3 ../fr2 $indir ;
fi
#cp -rf *.bin *.sh *.plt ../fr3 $1
