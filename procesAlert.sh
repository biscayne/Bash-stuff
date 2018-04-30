#!/bin/bash
# set -x
# Shell script to monitor process 
# It will send an email to $ADMIN, if the age of the alert file is older than 60 minutes
# -------------------------------------------------------------------------
# Set admin email so that you can get email.
ADMIN="problem@biscayne.nl"
ADMIN2="noproblem@biscayne.nl"
#
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#

if test `find "/media/alertfile-p1.txt" -mmin +60`
then
   echo "There seems to be a problem with Proces 1 on Server X" | \
   mail -s "Alert: Check Proces 1 on Server X" $ADMIN
else
   echo "No problem with Proces 1 on Server X" | \
   mail -s "Proces 1 running on Server X" $ADMIN2
fi
