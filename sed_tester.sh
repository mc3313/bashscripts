#!/bin/bash

ifile="test_sed_awk_etc.txt"
ofile="sed_tester.out"

#c view contents of file
sed '' $ifile
echo ""; echo "----------------------------------------------------"

#c print only lines 2 through 8
# sed -n '2,8p' $ifile > $ofile

#c    -i  (allows direct change onto file. Be careful with this.)

#c s = substitute every "line" strings with "nnnn"
# sed 's/line/R-R/' $ifile > $ofile   #only first instance

#c pgi= print (to screen) only the lines that have been substituted
# sed -n 's/line/R-R/p' $ifile    #substitude only first instance in each line
# sed -n 's/line/R-R/pg' $ifile   #g=substitude every instance
# sed -n 's/line/R-R/pgi' $ifile  #i=ignore case

#c same as above but use _ instead of / to separate parts of the command
#c   usefule when / is embedded in the text that we are working on
# sed 's_line_R-R_g' $ifile > $ofile

#c Substitude text preceding and up to "end" with "R-R"
# sed 's/^.*end/R-R/' $ifile > $ofile

#c To add parentheses () around the matched text use & to represent the text
# sed 's/^.*end/(&)/'  $ifile > $ofile

#c Special characters, such as "&", should be escaped like "\&" to be 
#c  treated as a character.
# sed -e 's/and/\&/' -e 's/end/R-R/' $ifile > $ofile
#c Alternative to using -e to string commands together. Use ";"
# sed 's/and/\&/;s/end/R-R/' $ifile > $ofile

#c Using "=" to insert line number in preceding each text line
# sed '=' $ifile > $ofile

#c Using "G" to insert blank line after each line
# sed 'G' $ifile > $ofile

#c Using "=;G" to add numbered line and space
# sed '=;G' $ifile > $ofile
#c Note that using piping gives different result
# sed '=' $ifile > $ofile | sed 'G'

#c Select range from "START" to "END" 
#c  then command "c\" replaces the range with "BEGIN\nNEW-END" 
#c  where "\n" is for new line
#sed '/START/,/END/c\BEGIN\nNEW-END' $ifile > $ofile

#c Use "r" to insert file "./tmp.txt" after line containing "START"
#sed -e '/START/r ./tmp.txt' $ifile > $ofile

#c In addition (to above) delete lines from "START" to "END"
sed -e '/START/r ./tmp.txt' -e '/START/,/END/d' $ifile > $ofile

echo ""; echo "----------------------------------------------------"
sed '' $ofile

#c References:
#c https://www.digitalocean.com/community/tutorials/the-basics-of-using-the-sed-stream-editor-to-manipulate-text-in-linux