#!/bin/bash
# Filter all kinds of special characters out of a file
# 
file-in=/tmp/file-in.txt
file-out=/tmp/file-out.txt
cat $file-in | tr "'" ' ' | sed 's/&amp;/u/g; s/*/ /g; s/´/ /g; s/  / /g; s/Ã¤/ae/g; s/Ã<84>/Ae/g; s/Ã¶/oe/g; s/<96>//g; s/Ã<96>/Oe/g; s/Ã<9c>/Ue/g; s/Ã¼/ue/g; s/Ã<9f>/ss/g; s/<80>/EUR/g; s/ä/ae/g; s/Ä/Ae/g; s/ö/oe/g; s/Ö/Oe/g; s/ü/ue/g; s/Ü/Ue/g; s/ß/ss/g; s/É/E/g; s/ø/o/g; s/Ø/O/g; s/æ/a/g; s/š/s/g; s/è/e/g; s/č/c/g; s/ô/o/g; s/é/e/g; s/ŕ/r/g; s/à/a/g; s/á/a/g; s/Š/S/g; s/ě/e/g; s/ů/u/g; s/ž/z/g; s/ř/r/g; s/ż/z/g; s/ť/t/g; s/â/a/g; s/’/ /g; s/ń/n/g; s/ć/c/g; s/Å/A/g; s/ñ/n/g; s/í/i/g; s/å/a/g; s/º/O/g; s/`//g; s/È/E/g; s/ê/e/g; s/ú/u/g; s/ł/l/g; s/ç/c/g; s/À/A/g; s/à/a/g; s/Á/A/g; s/á/a/g; s/Â/A/g; s/â/a/g; s/Æ/AE/g; s/æ/ae/g; s/Ç/C/g; s/ç/c/g; s/È/E/g; s/è/e/g; s/É/E/g; s/Ê/E/g; s/ê/e/g; s/Î/I/g; s/î/i/g; s/Ï/I/g; s/ï/i/g; s/Ô/O/g; s/ô/o/g; s/Œ/OE/g; s/œ/oe/g; s/Ù/U/g; s/ù/u/g; s/Û/U/g; s/û/u/g; s/Ÿ/Y/g; s/ÿ/y/g; s/»/ /g; s/«/ /g; s/›/ /g; s/‹/ /g; s/ë/e/g; s/Ë/E/g; s/€/EUR/g ' > $file-out
