#!/bin/sh
# Enter a string $1 and get back string in variable newname with 
# date and time (up to seconds) as header
# if [ -f $1 ] ; then
   newname=$(date +%Y_%m_%d_%H%M_)$1
   echo 'newname= '$newname ;
# else 
#   echo 'File '$1' does not exist!'
# fi
exit;
#------------------ example ------------------
dateback_file.sh test.txt
#gives back
newname= 2013_04_16_1327_test.txt  (but with newest date and time)
