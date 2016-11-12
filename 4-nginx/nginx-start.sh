#!/usr/bin/env bash

docker pull nginx
docker run -d --name nginx --link varnish:varnish -p 80:80 nginx
docker cp default.conf nginx:/etc/nginx/conf.d/default.conf
docker restart nginx
