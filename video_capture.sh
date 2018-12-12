#!/bin/bash

cd /media/root/disk/MP_ROOT/100ANV01

echo "pls input video name"
read input
echo "pls output video name"
read output
echo "pls input endtime(eg 00:00:00)"
read endtime

echo "start split video......"

ffmpeg -ss 00:00:00 -i $input.MP4 -vcodec copy -acodec copy -t $endtime $output-1.mp4
echo "$output-1.mp4 done"

ffmpeg -ss $endtime -i $input.MP4 -vcodec copy -acodec copy -t 02:30:00 $output-2.mp4
echo "$output-2.mp4 done"

