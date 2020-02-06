#--- 1) Find all files named $fname in subdirectories
#    2) Delete each file
#fname="COSY.bin" ;
fname="*.*~" ;
#fname="cosy.cod" ;
#fname="cosy.lis" ;
#fname="*.*~" ;
#fname="FIT_RESULTS.TXT" ;
find . -name $fname > INPUT.txt ;
#find . -name EngeFit_OUT.txt > INPUT.txt ;
#exit ;
let count=0 ;
while read line
do
  ((count++)) ;
  echo $count = $line ; #show input of line read
  rm $line
done < INPUT.txt
echo Found $count instances of $fname and deleted them.
exit ;
