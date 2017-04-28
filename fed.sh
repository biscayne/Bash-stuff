#!/bin/bash
# This script does a find in FedEx invoice files in .csv format
# using InterCompany number (order number) as searchstring.
# The results are printed with labels in chosen language.
# Options 1) Nederlands 2) English 3) Quit
# PP 2013

OPTIONS="Nederlands English Quit"
select opt in $OPTIONS; do
  if [ $opt = "Quit" ]; then
    echo done
    exit
  elif [ $opt = "Nederlands" ]; then
     echo "Enter IC nummer: "
     read ref
     awk ' NR==2 {split ($0, Hd); next}
        $19==RefNo {print Hd[ 6]":",  $6;
                    print Hd[ 7]":",  $7;
                    print Hd[22]":", $22;
                    print Hd[23]":", $23;
                    print Hd[24]":", $24;
                    print Hd[26]":", $26 }
      ' FS="\",\""  RefNo=$ref *
  elif [ $opt = "English" ]; then
     echo "Enter IC number: "
     read ref
     awk ' NR==1 {split ($0, Hd); next}
        $19==RefNo {print Hd[ 6]":",  $6;
                    print Hd[ 7]":",  $7;
                    print Hd[22]":", $22;
                    print Hd[23]":", $23;
                    print Hd[24]":", $24;
                    print Hd[26]":", $26 }
      ' FS="\",\""  RefNo=$ref *
  else
    clear
    echo "Bad option"
  fi
done
