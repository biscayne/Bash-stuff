#!/bin/bash
# fullname="USER INPUT"
#read -p "Enter fullname: " fullname
# user="USER INPUT"
#read -p "Enter user: " user
read -p "Enter portno: " portno
grep "$portno" /etc/services | awk '{print $1}'
