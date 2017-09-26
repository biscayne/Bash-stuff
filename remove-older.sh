#! /bin/bash
#
# delete files older than 10 days form /tmp directory
# to first check run this:
#find /tmp/ -type f -mindepth 1 -mtime +10 -depth -print
find /tmp/ -type f -mindepth 1 -mtime +10 -delete
