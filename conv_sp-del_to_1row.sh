# Conver space deliminated files to 1 column file
#--- Example: for reading files in COSY with more than limit # of columns
   infile=$1 ; 
   outfile='1row_'$infile ;
   if [ -f $infile ]; then
     echo 'Process '$infile' and generate '$outfile
    #Add characters to beginning of line 
     sed 's/^/nLn /' $infile > tmp1 ;
    #Convert spaces to line feeds 
     sed 's/ \+/\n/g' tmp1 > $outfile ;
     rm -rf tmp1 
   fi
