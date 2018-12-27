#!/bin/bash

cd `dirname $0`
docker stats texenv || docker build -t texenv . || echo Dockerがインストールされてません;
qpdfview workdir/*.pdf;
docker run -v workdir:/workdir texenv