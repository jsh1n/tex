#!/bin/bash

cd `dirname $0`
docker stats texenv || docker build -t texenv . || echo Dockerがインストールされてません
docker run -v `pwd`/workdir:/workdir texenv
