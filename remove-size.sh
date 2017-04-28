#!/bin/bash
# remove all tif files with a size smaller than 1l (1024 bytes)
find -name "*.tif" -size -1k -delete

