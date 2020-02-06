# For an array of file names, scan all files  
#  to convert lines from each file into columns.
# Write full scan from each files as a line in a new output file.
declare -a FILEARR
# list of files to extract lines from 
FILEARR[1]='Q3-14A-45n225FR4/TEST_INFO.TXT' ;
FILEARR[2]='Q3-21A-45n225FR4/FIT01_INFO.TXT' ;
FILEARR[3]='Q3-28A-45n225FR4/FIT01_INFO.TXT' ;
FILEARR[4]='Q3-35A-45n225FR4/FIT01_INFO.TXT' ;
FILEARR[5]='Q3-42A-45n225FR4/FIT01_INFO.TXT' ;
FILEARR[6]='Q3-50A-45n225FR4/FIT01_INFO.TXT' ;
FILEARR[7]='Q3-56A-45n225FR4/FIT01_INFO.TXT' ;
FILEARR[8]='Q3-63A-45n225FR4/FIT01_INFO.TXT' ;
FILEARR[9]='Q3-70A-45n225FR4/FIT01_INFO.TXT' ;
let fcount=9 ;
# Open file for output and scan all lines in the file 
#  and write them as comma deliminated columns
echo 'lines from file to columns ' > INFO_lines.txt ;
let k=1 ;
while [ $k -le $fcount ]
  do
      infile=${FILEARR[$k]} ; 
      echo $infile ;
      j=0 ; lineout='' ;
      while read line
      do
         lineout=$lineout', '$line
      done < $infile
      echo $lineout  >> INFO_lines.txt ;
      k=$(( $k + 1 )) ;
  done
