#!/usr/bin/env bash
echo "######### PARANDO SERVICOS #########"
sudo launchctl unload -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist 2> /dev/null
sudo apachectl stop 2> /dev/null

# docker rmi $(docker images -qa)
docker rm $(docker ps -qa) -f

clear

echo "######### START CONTAINER MYSQL #########"
cd 1-mysql/ && sh mysql-start.sh
docker ps -a

echo "######### START CONTAINERS TOMCAT #########"
cd ../2-tomcat/ && sh tomcat-start.sh
docker ps -a

echo "######### START VARNISH-CACHE #########"
cd ../3-varnish-cache/ && sh varnish-start.sh
docker ps -a

echo "######### START NGINX #########"
cd ../4-nginx/ && sh nginx-start.sh
docker ps -a