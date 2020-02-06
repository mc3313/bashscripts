#!/bin/bash
#Method to comment out a section of code
echo before comment
: <<'END'
bla bla
blurfl
END
echo after comment