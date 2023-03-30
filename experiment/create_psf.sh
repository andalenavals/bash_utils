#!/bin/bash

# Purpose: cut out image stamps around positions from imexam
#          and combine the stars to create a psf model

DIR=$1
IM=$2
LIST=$3
RADIUS=$4 # in x and y around the center
MAX_FWHM_STACK=$5 # Use to select the stars and reject the lens

# example for LIST entries:
# 468.99 1713.55   12.06 149388.9   128.61  78  1.11 0.056  87.2  3099.68  8.24
# 311.73 1557.68   12.16 137040.5   113.46  80  4.29 0.010  41.2  2784.93  8.16
#1010.60 1589.49   10.30 760004.1   645.35  78  3.14 0.015  10.8 15822.06  8.09

cd $DIR

source /scisoft/bin/IRAF.bash
echo "xgterm" | mkiraf
#sleep 10


echo "Cut out image stamps around objects"
rm $DIR/cut_stamp*.fits
echo "cd $DIR" > tmp.code1
awk 'BEGIN{r='$RADIUS';im="'"$IM"'"}{x=$1;y=$2;printf "imcopy %s[%d:%d,%d:%d] cut_stamp%d.fits\n",im,int(x-r),int(x+r),int(y-r),int(y+r),NR}END{}' $LIST >> tmp.code1
echo "logout" >> tmp.code1
cl < tmp.code1


echo "Register and scale objects"
rm $DIR/cut_shift*.fits
rm $DIR/cut_scale*.fits
echo "cd $DIR" > tmp.code2
awk 'BEGIN{r='$RADIUS';im="'"$IM"'"}{x=$1;y=$2;flux=$4;printf "imshift cut_stamp%d.fits cut_shift%d.fits %f %f\n imarith cut_shift%d.fits * %f cut_scale%d.fits\n", NR, NR, (int(x)-x), (int(y)-y), NR, (1000./flux), NR}END{}' $LIST >> tmp.code2
echo "logout" >> tmp.code2
cl < tmp.code2

echo "Stack the stars (objects with FWHM<${MAX_FWHM_STACK})"
rm $DIR/cut_star_stack.fits
rm $DIR/cut_star_stack_scale.fits
echo "cd $DIR" > tmp.code3

awk 'BEGIN{maxfwhm='$MAX_FWHM_STACK';}{fwhm=$11; if (fwhm<maxfwhm){printf "cut_shift%d.fits\n", NR}}' $LIST > tmp.shift.list

awk 'BEGIN{maxfwhm='$MAX_FWHM_STACK';}{fwhm=$11; if (fwhm<maxfwhm){printf "cut_scale%d.fits\n", NR}}' $LIST > tmp.scale.list
echo "imcombine @tmp.shift.list cut_star_stack.fits" >> tmp.code3
echo "imcombine @tmp.scale.list cut_star_stack_scale.fits" >> tmp.code3
echo "logout" >> tmp.code3
cl < tmp.code3

# remove some files in order not to mix up students so much!
rm $DIR/cut_stamp*.fits
rm $DIR/cut_shift*.fits
rm $DIR/cut_star_stack.fits
