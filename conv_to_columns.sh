#-- convert .POS to column deliminated format (eg. to plot with gnuplot)
#infile=$1 ; # input .POS file from COSY output
#outfile=$2 ;
#----------------------post cosy processing-------------------------------
   infile=$1 ; outfile=$2 ;
   line1=$(tail -n +2 $infile | head -n 1) ;
   echo $line1 > $outfile ;
   
   entrynum=1 ;
   while [ $entrynum -ge 0 ]
   do
           n=$(( 1 + 2*$entrynum ))
           line1=$(tail -n +$(( $n )) $infile | head -n 1) ;
           if [ "$line1" = "END" ]
           then
               entrynum=-$entrynum
               echo $line1
           else
               line2=$(tail -n +$(( $n + 1 )) $infile | head -n 1) ;
               echo $line1 $line2 >> $outfile ;
               entrynum=$(( $entrynum + 1 ))
           fi
   done
   echo "Last entry $entrynum at line $n ."
