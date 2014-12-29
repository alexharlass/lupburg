#!/bin/bash

fswebcam -r 960x720 -d /dev/video0 /home/pi/webcam.jpg
cp /home/pi/webcam.jpg /home/pi/lupburg/
cd /home/pi/lupburg/
git add .
git commit -a -m `date +%s`
git push original
