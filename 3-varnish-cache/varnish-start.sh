#!/usr/bin/env bash

docker pull ubuntu:16.10
docker build -t ubuntu:16.10 .

#docker run -it --name varnish -p 6081:6081 ubuntu:16.10
docker run -it --name varnish --link tomcat1:tomcat1 --link tomcat2:tomcat2 --link tomcat3:tomcat3 -p 6081:6081 ubuntu:16.10

# docker cp varnish varnish:/etc/default/varnish
# docker cp default.vcl varnish:/etc/varnish/default.vcl
docker exec -it varnish /etc/init.d/varnish restart
docker ps -a
