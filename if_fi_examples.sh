# http://tldp.org/LDP/abs/html/comparison-ops.html
# http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-6.html

#String comparison 1
str1="test" ;
str1="" ;
if [ "$str1" == "" ]; then echo "blank" ; else echo "$str1"; fi

#example application using input $1 
target_file=$1 ;
if [ "$1" == "" ]; then echo "aris.fox" ; else echo "$1"; fi


#String comparison 2
str1="Y" ;
if [ "$str1" == "Y" ]; then
  echo "Condition Y for yes";
else
  echo "Not Y";
fi

#Belows seems to work the same
str1='Y' ;
if [ $str1 == 'Y' ]; then
  echo 'Condition Y for yes';
else
  echo 'Not Y';
fi

#Integer comparison
a=2 ;
if [ "$a" -eq 1 ]; then
  echo "a=1";
else
  echo "a -ne 1";
fi

#Integer comparison with elseif
a=3 ;
if [ "$a" -eq 1 ]; then
  echo "a=1";
elif [ "$a" -eq 2 ]; then
  echo "a=2";
else
  echo "a -ne 1  AND a -ne 2";
fi


# Not condition to do if file is missing
if ! [ -e ThisFile ]; then echo "ThisFile missing" ; fi

if [ -e plot_from_WM_cosy8anl.fox ]; then echo "Missing" ; exit ; fi

#If file or directory exist
# One line:
if [ -f readme.txt ]; then echo "file exists"; fi
# Multiple lines
infile='myfile.txt' ;
if [ -f $infile ]; then
  echo 'file exists' 
else
  echo 'File does not exist!!!' ;
fi

if [ ! -f $infile ]; then
  echo 'file exists NOT' 
else

indir='somediretory' ;
if [ -d $indir ]; then
  echo 'directory exists' 
else
  echo 'Directory does not exist!!!' ;
fi

#Read line from file and compare string that was read
fcont="CONTROL"
exec 4<$fcont
read line <&4
echo $line
if [ "$line" == "RUN" ]; then
  echo "Running!"
else
  echo "Not running. OK to go on."
fi

#Test if executable file exist
execfile="cosy"
if [ -e $execfile ]; then
  echo "Executable file exists."
fi
