#!/bin/bash

prefix="pre_"
mid=$RANDOM
mid
post=".txt"

newname="$prefix$mid$post"
echo $newname

#extract limits set of set of characters from random number
mid=${mid:0:3}
newname="$prefix$mid$post"
echo $newname

exit;

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

#References:
#http://unix.stackexchange.com/questions/223182/how-to-replace-spaces-in-all-file-names-with-underscore-in-linux-using-shell-scr
#http://tldp.org/LDP/abs/html/string-manipulation.html
#http://www.tldp.org/LDP/abs/html/randomvar.html
