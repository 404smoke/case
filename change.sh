#!/bin/sh
git pull https://github.com/404smoke/case.git
cd /home/smoke/dockerfiles
docker build -t timer .
docker restart timer
