#!/bin/bash
app="docker.test"
docker stop ${app}
docker rm ${app}
docker build -t ${app} .
docker run -d -p 56733:80 \
  --name=${app} \
  -v $PWD:/app ${app}
