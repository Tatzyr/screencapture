#!/bin/bash

VIDEO_WIDTH=1680
VIDEO_HEIGHT=1050

if [ $# -ne 1 ]; then
  echo "usage: $0 <YYMMDD>" 1>&2
  exit 1
fi

cd $1

i=0
for f in $(ls *.png | sort -n); do
  mv $f $(printf "%05d.png" $i)
  i=$((i+1))
done

ffmpeg -framerate 8 -i "./%05d.png" -vcodec libx264 -qscale:v 0 -pix_fmt yuv420p -s ${VIDEO_WIDTH}x${VIDEO_HEIGHT} ../$(basename $1).m4v
