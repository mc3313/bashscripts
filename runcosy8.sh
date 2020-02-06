# This script allows the .fox file in the current directory to run with cosy 
#   executable files that reside in a different directory.
#  The generated output will be put in the current directory.
#
#-----define the directory where the cosy executable resides-------
fox_file=$1 ; # set variable $fox_file to fist input after command
cosypath="/projects/a2400/cosy8fortran" ;
#cosypath="/projects/a2400/MP/cosy9anl_MP" ;
echo $cosypath

#-------------prepare foxyinp.dat file for cosy to read-------------
#### Call cosy ######################################################
#append: ##append input line into   ../foxyinp.dat ;
#append: cp $cosypath'/foxyinp.dat' . ;
#append: foxyinp='foxyinp.dat' ;
#append: echo 'update... $foxyinp' ;
#append: sed  '1i '"$no_fox"'' $foxyinp > temp ;
#append: mv temp $foxyinp ;
#create new: #Create a new foxyinp.dat file with call to .fox file
no_fox=$( echo $fox_file | sed 's/.fox//' ) ;
foxyinp='foxyinp.dat' ; rm -f $foxyinp ; echo 'new' >> $foxyinp ;
echo 'update... $foxyinp' ;
sed  '1i '"$no_fox"'' $foxyinp > temp ;
mv temp $foxyinp ;

#Run command to execute cosy with .fox file as input
echo $cosypath/cosy ;
$cosypath/cosy -nice ;
#$cosypath/cosy ;

#----------------------post cosy processing-------------------------------
make_splots='splots' ;    # =1 process SLOG output file and plot using gnuplot
#if [ $2 = 'splots' ] ; then
if [ $make_splots = 'splots' ] ; then
   infile='SLOG.TXT' ; outfile='SLOG.DAT'
   if [ -f $infile ]; then
     echo 'Process '$infile' and generate '$outfile
     sed -e 's/endline/new_line#/' $infile > tmp1
       #get rid of all new line characters
     cat tmp1 | tr -d '\n' > tmp2
     sed 's/new_line#/\n/g' tmp2 > $outfile
     rm -rf tmp1 tmp2 
       # Generate plots
     gnuplot pic_slog.plt
   fi
fi
