#!/bin/sh
git pull
read TTT < ./text
sed -i "s/yyy=.*/yyy=\'$TTT\'/g" timer.py
docker stop timer
docker container rm timer
docker build -t timer .
docker run --name=timer -d -v www_data:/var/www timer
