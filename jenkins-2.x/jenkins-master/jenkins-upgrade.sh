#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

docker stop jenkins_master_1
docker rm jenkins_master_1

docker build -t jenkins_master -f Dockerfile --pull --no-cache . || exit 1
docker run --name=jenkins_master_1 -p 8088:8080 -p 50000:50000 --volumes-from=jenkins_data_1 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -d jenkins_master || exit 1