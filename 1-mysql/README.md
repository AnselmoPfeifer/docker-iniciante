# Container Docker para Banco de Dados MySQL:5.6

1 - docker pull mysql:5.6
2 - docker build -t mysql:5.6 .
3 - docker run -d --name localhost -p 3306:3306 mysql:5.6
4 - docker exec -i localhost mysql -u cobranca -pC41ZBxAmSLhRZliF cobranca < cobranca.sql
5 - docker exec -it localhost /bin/bash -c "export TERM=xterm; exec bash"
6 - docker commit -m "Ajuste de database" localhost anspfeifer/mysql:latest
7 - docker push anspfeifer/mysql:latest

    mysql -u root -pC41ZBxAmSLhRZliF;
    show databases;
    use cobranca;
    show tables;
    select * from titulo;
