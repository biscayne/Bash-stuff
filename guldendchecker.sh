#!/bin/sh
# set -x
# Shell script to monitor GuldenD running on the G-DASH node
# It will send an email to $ADMIN, if the number of GuldenD processes is <= 0
# and it will start GuldenD.
# -------------------------------------------------------------------------
# Set admin email so that you can get email.
# Also make sure you've got working mail on your pi.
ADMIN="perry@biscayne.nl"
# set alert level 0 is default
ALERT=0
#
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#
usep=$(ps aux | grep GuldenD | wc -l | awk '{print $1-1}')
echo $usep
if [ $usep -le $ALERT ] ; then
   echo "GuldenD not running on pi4 \"($usep)\", $(date)" | mail -s "Alert: GuldenD restarted on pi4" $ADMIN
   /opt/gulden/guldenstart.sh
fi
