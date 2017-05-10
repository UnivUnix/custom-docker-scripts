#!/bin/sh

docker service create --name proxies -p 80:80 -p 443:443 nginx
