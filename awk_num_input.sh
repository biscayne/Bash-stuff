#!/bin/sh
read input
echo $input | awk ' { if ( $0 ~ /^[0-9]*$/ )
                      printf " input contains numerics only"
                else printf " input is mixed mode " } '
