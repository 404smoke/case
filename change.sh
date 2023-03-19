#!/bin/sh
git pull
TTT=`cat /home/smoke/jenkins/text`
sed -i 's/yyy=\".*\"/yyy=\"$TTT\"/' timer.py`
docker build -t timer .
docker restart timer
