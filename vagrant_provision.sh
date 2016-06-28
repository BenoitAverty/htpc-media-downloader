#!/bin/bash

# Install docker
apt-get install -y apt-transport-https ca-certificates
echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
apt-get update -y
apt-get install -y docker-engine
service docker start

# Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.8.0-rc1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
