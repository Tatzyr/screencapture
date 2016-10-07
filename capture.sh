#!/bin/bash

outdir=$HOME/screencapture/$(date +%Y%m%d)
mkdir -p $outdir
/usr/sbin/screencapture -x $outdir/$(date +%s).png
