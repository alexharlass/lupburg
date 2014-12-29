#!/bin/bash

fswebcam -r 960x720 -d /dev/video0 /home/pi/webcam.jpg
cp /home/pi/webcam.jpg /home/pi/lupburg/
cd /home/pi/lupburg/
sleep 10
git add .
git commit -a -m "generated files on `date +'%Y-%m-%d %H:%M:%S'`"
git push -u origin master

