# Search for string ELN and convert to 'end of line'
# Create space deliminated columns with lines between each of these

#----------------------post cosy processing-------------------------------
   infile=$1 ; 
   outfile='COLS_'$infile ;
   if [ -f $infile ]; then
     echo 'Process '$infile' and generate '$outfile
     sed -e 's/ELN/new_line#/' $infile > tmp1
       #get rid of all new line characters
     cat tmp1 | tr -d '\n' > tmp2
     sed 's/new_line#/\n/g' tmp2 > $outfile
     rm -rf tmp1 tmp2 
   fi
