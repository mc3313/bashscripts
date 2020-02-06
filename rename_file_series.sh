#chmod u+x rename_file_series.sh ; rename_file_series.sh

# Rename all filenames in $PWD with ".cfg.out" suffix to a ".cfg" suffix.
# For example, "file1.cfg.out" becomes "file1.cfg" . . .

SUFF1=.cfg.out
SUFF2=.cfg

for i in $(ls *$SUFF1)
do
  mv -f $i ${i%$SUFF1}$SUFF2
  #  Leave unchanged everything *except* the shortest pattern match
  #+ starting from the right-hand-side of the variable $i . . .
done ### This could be condensed into a "one-liner" if desired.
