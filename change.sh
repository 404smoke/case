#!/bin/sh
git pull
TTT=`cat ./text`
sed -i 's/yyy=\".*\"/yyy=\"$TTT\"/' timer.py`
docker build -t timer .
docker restart timer
