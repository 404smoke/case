#!/bin/sh
git pull
read TTT < ./text
sed -i 's/yyy=.*/yyy=$TTT/' timer.py
docker build -t timer .
docker restart timer
