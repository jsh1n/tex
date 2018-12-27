#!/bin/bash

cd `dirname $0`
docker stats texenv || docker build -t texenv . || echo Dockerがインストールされてません;
qpdfview `pwd`/workdir/*.pdf &
docker run -v `pwd`/workdir:/workdir texenv
