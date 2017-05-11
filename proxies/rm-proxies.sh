#!/bin/sh

# Remove service
docker service rm proxies
# Remove network
docker network rm proxies
