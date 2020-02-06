#chmod u+x replace_text_in_file_series.sh ; replace_text_in_file_series.sh

# Rename all filenames in $PWD with ".cfg.out" suffix to a ".cfg" suffix.
# For example, "file1.cfg.out" becomes "file1.cfg" . . .


SUFF=.cfg

for i in $(ls *$SUFF)
do
  echo $i
  sed -e 's/Bend radius = 3.100000/Bend radius = 4.576369/' \
-e 's/Bend angle = 45.000000/Bend angle = 30./' \
-e 's/Pole face rotation = 1.000000/Pole face rotation = -6.5/' \
$i > tmp1 && mv -f tmp1 $i ;
done ### This could be condensed into a "one-liner" if desired.


