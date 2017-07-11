#!/bin/sh
# set -x
# Shell script to monitor the number of label files (AKA DESADV or despatch advice) waiting for FTP
# It will send an email to $ADMIN, if the number of files in the queue is >= 3.
# -------------------------------------------------------------------------
# Set admin email so that you can get email.
ADMIN="alarm@biscayne.nl,alert@biscayne.nl"
# set alert level 3 is default
ALERT=3
#
ARRAY=( DBD DLD DLT EYD P06 PSF GTG GTH POL POD PSD FHM TME FHN ARK AND SGO ANN BAC BAB BDT T24 PRT PNS PMB OPN MOD MOT MDT KPS KES BOP HAM GTR GUN GOG G4Y OTX FFD FFR DRI CAM CPR BRE C4E BNB PNC PNH P53 PFN CPS CAH CAF PFZ KIN HOH GTF SMC TYS DBV M1P M1S ABD TYC TYM TDE TIS TPL TIP TIB TRX RSU SCA RRT ROT RON RCM RFH HDR HEN TYP TIF SGM TOL R24 ZR7 TUK SEN SCE )
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#
for i in "${ARRAY[@]}"
do
    usep=$(ls -l /media/mounted/Export/internetftp/LABEL/$i* 2>/dev/null | wc -l | awk '{print $1}')
    echo $usep
    if [ $usep -ge $ALERT ] ; then
       echo "Not sending labelfiles \"$i ($usep)\" ; check task under Upload Label on server ftp-27, $(date)" | \
       mail -s "Alert: FTP task for upload labels \"$i\" - number of files waiting for upload: $usep" $ADMIN
    fi
done
