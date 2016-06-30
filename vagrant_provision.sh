#!/bin/bash

# Install docker
curl -O- https://get.docker.com | sh
usermod -aG docker vagrant
service docker start

# Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.8.0-rc1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
