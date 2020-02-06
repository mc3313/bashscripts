#!/bin/bash
# Generate date+time string and save to file for access by other applications
datetime=$(date +%Y_%m_%d_%H%M)
echo $datetime > tmp ;
exit;
