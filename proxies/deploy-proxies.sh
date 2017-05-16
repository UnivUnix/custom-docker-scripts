#!/bin/sh

# Create network
docker network create -d overlay proxies
# Create service
docker service create --name proxies \
-p 80:80 -p 443:443 \
--mount type=bind,src=/var/docker-unvx/proxies/nginx/conf.d,dst=/etc/nginx/conf.d \
--mount type=bind,src=/var/docker-unvx/proxies/nginx/ssl,dst=/etc/nginx/ssl \
nginx:alpine
