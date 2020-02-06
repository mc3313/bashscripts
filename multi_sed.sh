#!/bin/sh
# Makes changes to a file multiple times and numbered.
# Used in the past to change .fox files and re-run them with changed conditions
# EXAMPLE> multi_sed.sh multi_sed_tset.fox  ( $1=start file ) 
echo "Using: $1 to generate other script files";
name_head=$( echo $1 | sed 's/.fox//' ) ; #name of file to modify
for((c=1; c<3; c++))
do
  printf -v newname "$name_head%04d.fox" $c ;
  echo $newname ;
  #----------- generate new file -----------------------------------------------
  str1a="100Tc_TRAN"
     printf -v str1b "$str1a%04d" $c ; echo $str1a "->" $str1b ;
  str2a="{plchldr1"
     printf -v str2b "$str2a%04d" $c ; echo $str2a "->" $str2b ;
  str3a="{plchldr2"
     printf -v str3b "$str3a%04d" $c ; echo $str3a "->" $str3b ;
     #issue sed command
     sed -e "s/$str1a/$str1b/" \
         -e "s/$str2a/$str2b/" \
         -e "s/$str3a/$str3b/" \
         -e "s/RUN ;  END ;/RUN ;  END ;/" $name_head.fox > $newname ;
  #-----------------------------------------------------------------------------
done
exit;

