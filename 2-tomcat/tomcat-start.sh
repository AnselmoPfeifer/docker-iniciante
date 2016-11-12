#!/usr/bin/env bash

docker pull tomcat:8.5-jre8
docker build -t tomcat:8.5-jre8 .
docker run -d --name tomcat1 --link localhost:localhost -p 8081:8080 tomcat:8.5-jre8
docker run -d --name tomcat2 --link localhost:localhost -p 8082:8080 tomcat:8.5-jre8
docker run -d --name tomcat3 --link localhost:localhost -p 8083:8080 tomcat:8.5-jre8
docker ps -a