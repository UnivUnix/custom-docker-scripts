#!/bin/sh

# Create network
docker network create -d overlay proxies
# Create service
docker service create --name proxies -p 80:80 -p 443:443 -v /var/docker/proxies/nginx:/etc/nginx:rw nginx:alpine
