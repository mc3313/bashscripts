#!/bin/sh
#chmod +x read_files_using_units.sh ; read_files_using_units.sh

#Source of explanation for this content
#http://www.linuxjournal.com/content/reading-multiple-files-bash

#create some test file 
fname="LS.txt"

ls > $fname

#Define the the output unit. Must be larger than 3 because usually the 
# units are reserved as  0 stdin(keyboard)  1 stout (screen)  2 sterr

#Exampleo of redirecting this file to unit 4
exec 4<$fname

#Now read the first 2 lines
read line <&4
echo $line

read line <&4
echo $line

#To close the file
exec 4</dev/null
