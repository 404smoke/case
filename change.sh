#!/bin/sh
git pull https://github.com/404smoke/case.git
cp ./case/change.sh ./change.sh
TTT=`cat /home/smoke/jenkins/text`
sed -i 's/yyy=\".*\"/yyy=\"$TTT\" timer.py`
docker build -t timer .
docker restart timer
