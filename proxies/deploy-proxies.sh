#!/bin/sh

# Create network
docker network create -d overlay proxies
# Create service
docker service create --name proxies \
-p 80:80 -p 443:443 \
--mount type=bind,src=/var/docker/proxies/nginx,dst=/etc/nginx \
nginx:alpine
