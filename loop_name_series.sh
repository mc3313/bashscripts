#1) Generate list of files names using find or loop method >> to file
#2) Loop through all names in file

#Example: loop over a list of strings
for str in test1 test2 test3 ; do
  echo $str
done

#Method 1: Use find to generate list of files names to fnames.txt
targetdir="/projects/a2400/N4TripletMapping/MP_analysis/fribsep_2012-12/TypeB"
#ls $targetdir ;
find $targetdir -name plot_DIF.ps >> fnames.txt;
let count=0 ;
while read line
do
  ((count++)) ;
  echo $line
done < fnames.txt
echo Found $count instances
exit ;

#Method 2: Use a loop to generate names of directories 
echo "list:" > fnames.txt
for nm1 in  Q1_ Q3_; do
  for nm2 in  14An2_ 35An2_ 50An2_ 70An2_; do
    for nm3 in 45deg_ 225deg_; do
      echo $nm1$nm2$nm3"r81mm" >> fnames.txt
    done
  done
done
#Convert and collect all images of plots
targetdir="/projects/a2400/N4TripletMapping/MP_analysis/fribsep_2012-12/TypeB/"
let count=0 ;
while read line; do
  ((count++));
  fname=$targetdir$line"/plot_DIF.ps"
  if [ -f $fname ]; then
    echo $fname
  else
    echo "skip: "$line
  fi
done < fnames.txt
echo Found $count instances
exit ;

