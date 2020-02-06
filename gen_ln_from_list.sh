fname="flist.txt" ;
ls /mnt/simulations/fribesmag/PreseparatorDipoles/50_degree_dipole_v01/*.table > $fname
exit ;


let count=0 ;
while read line
do
  ((count++)) ;
  #echo $count $line
  ln -s "$line" "ln_$count"
done < $fname
echo Found $count instances of $fname and deleted them.
exit ;
