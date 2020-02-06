#Convert output file from SpecTcl to colums deliminated by space.
#Input format=  {xtitle ytitle} {# #}...
#Output format=  xtitle ytitle
#                  #      #
echo 'Convert '$1
newfile=$1'.txt'
sed -e 's/} {/\n/g' -e 's/{//g' -e 's/}//g' $1 > $newfile
echo 'new file: '$newfile
exit 0
