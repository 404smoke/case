#!/bin/sh
git pull
TTT=`cat ./text`
echo $TTT
sed -i 's/yyy=\".*\"/yyy=\"$TTT\"/' timer.py`
docker build -t timer .
docker restart timer
