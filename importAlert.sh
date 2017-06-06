#!/bin/sh
# set -x
# Shell script to monitor or watch the order import
# It will send an email to $ADMIN, if the number of unprocessed orders is >= 10.
# -------------------------------------------------------------------------
# Set admin email so that you can get email.
ADMIN="perry@example.com"
# set alert level 10 is default
ALERT=10
#
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#
usep=$(ls -l /media/av/import | wc -l | awk '{print $1-1}')
echo $usep
if [ $usep -ge $ALERT ] ; then
   echo "Not processing orders /media/import \"($usep)\" on server biscayne7, $(date)" | \
   mail -s "Alert: biscayne7 system number of unprocessed orders in import: $usep" $ADMIN
fi
