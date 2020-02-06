#!/bin/bash
grep 'ERROR' *.out > tmp1 ;
sed -e 's/Binary file fribsep//' -e 's/.out matches//g' tmp1 > tmp2 ;
let count=0 ;
while read line
do
   ((count++)) ;
   echo $line ;
   str='SHFT_TRAN'$line
   rm -rf $str
   rm -f 'fribsep'$line'.cod'
   rm -f 'fribsep'$line'.lis'
   rm -f 'fribsep'$line'.fox'
   rm -f 'fribsep'$line'.out'
done < tmp2

