#!/bin/bash
# chmod u+x file_list_analyze.sh ; file_list_analyze.sh
#Review all results using aris_TASK1.00.fox

function runcosy()
{
  local cosyfile="aris_TASK1.00.fox"
  echo "Running using file: $1"
  echo $1 > seq.in
  ./runcosy91.sh $cosyfile < seq.in
}

flist="LIST.txt"
indir="k3_tries"
passdir="good_list"
rm -rf $passdir ; mkdir $passdir
count=0
eof1=0

find $indir/ -name NEW*.dat > $flist

exec 4<$flist
while [[ $eof1 -eq 0 ]]
do
  if read fn <&4; then
    let count++
    #printf "%d %s\n" $count $fn
    echo $fn
    runcosy $fn
    read -p "Move to good solution space?" yn
    if [ "$yn" == "y" ]; then
      #method 1
      echo "Copy to good space:" ; cp $fn $passdir
      #method 2
      #read -p "Enter new name:" newname ; cp $fn $passdir/$newname
    else
      echo "Leave as is"
    fi
  else
    eof1=1
  fi
done
exec 4</dev/null

echo -e "\nTotal $count files processed"
exit ;
