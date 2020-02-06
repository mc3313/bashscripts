#!/bin/sh
# Prepare fribsep???.fox file from a start file 
#  then launch it with runcosy8.sh using nohup option
# $1=start file 
echo "Using: $1 to generate other script files";
name_head=$( echo $1 | sed 's/.fox//' ) ; #name of file to modify
for((c=1; c<11; c++))
do
  #printf -v endnum "%04d" $c ; echo $endnum ;
  printf -v newname "$name_head%04d.fox" $c ;
  echo $newname ;
  #cp $1 $newname ; #copy with no changes
  #----------- generate new file -----------------------------------------------
  str1a="SHFT_TRAN"
     printf -v str1b "$str1a%04d" $c ; echo $str1a "->" $str1b ;
  str2a="shf_file_"
     printf -v str2b "$str2a%04d.txt" $c ; echo $str2a "->" $str2b ;
  str3a="{plchldr2"
     printf -v str3b "$str3a%04d" $c ; echo $str3a "->" $str3b ;
     #issue sed command
     sed -e "s/$str1a/$str1b/" \
         -e "s/$str2a/$str2b/" \
         -e "s/$str3a/$str3b/" \
         -e "s/RUN ;  END ;/RUN ;  END ;/" $name_head.fox > $newname ;
  #-----------------------------------------------------------------------------
  runcosy8.sh $newname ;
  sleep 10 ; #delay in seconds
done
exit;

