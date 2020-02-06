#!/bin/bash
# chmod +x rev_file_order.sh ; rev_file_order.sh filein filerev
# same as one liner,  sed '1!G;h;$!d' filein > filerev
sed '1!G;h;$!d' $1 > $2
