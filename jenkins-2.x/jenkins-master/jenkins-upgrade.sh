#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

docker stop jenkins_master_1
docker rm jenkins_master_1

docker build -t jenkins_master -f Dockerfile --pull --no-cache .
docker run --name=jenkins_master_1 -p 8080:8080 -p 50000:50000 --volumes-from=jenkins_data_1 -d jenkins_master