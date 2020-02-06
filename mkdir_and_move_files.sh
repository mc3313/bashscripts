# Move/copy all result files of the Rm test
#  $1=new_dir =the directory to make and copy the results to
new_dir=$1 ; # new directory
echo $new_dir ;
mkdir $new_dir ;
gnuplot pic_scatter_ALL.plt
mv pic*.ps END*.POS.txt TASK_*.txt $new_dir
cp fribsep_MP1.fox Resol_from_PhSpc_08k.xlsx $new_dir
exit
