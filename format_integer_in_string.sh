#!/bin/bash
# http://www.catonmat.net/blog/bash-one-liners-explained-part-two/
#   -> pad numbers 0 to 9 with leading zeros
# Create a name with integer such that number of digits is controlled
name_head='fribsep';
for((c=9; c<12; c++))
do
  echo $c;
  printf -v newname "$name_head%04d.fox" $c;
  echo $newname;
done
exit;

