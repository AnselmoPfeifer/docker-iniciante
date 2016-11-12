#!/usr/bin/env bash

docker pull mysql:5.6
docker build -t mysql:5.6 .
docker run -d --name localhost -p 3306:3306 mysql:5.6
sleep 6 # aguardando 6 seg para start servico
docker exec -i localhost service mysql status
sleep 6
docker exec -i localhost mysql -u root -pknkA9n7YnzvrDLE -h localhost cobranca < cobranca.sql 2> /dev/null
docker ps -a

# PARA TEST
# docker exec -it localhost /bin/bash -c "export TERM=xterm; exec bash"
# mysql -u root -pknkA9n7YnzvrDLE
# show databases;
# use cobranca;
# show tables;
# select * from titulo;
