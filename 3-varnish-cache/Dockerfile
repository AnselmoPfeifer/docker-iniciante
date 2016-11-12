FROM ubuntu:16.10

MAINTAINER Anselmo Pfeifer: 0.1

ENV DEBIAN_FRONTEND noninteractive
ENV PACOTES="varnish"

RUN apt-get update
RUN apt-get -y install $PACOTES
RUN rm -rf /var/lib/apt/lists/*

COPY varnish /etc/default/varnish
COPY default.vcl /etc/varnish/default.vcl


EXPOSE 6081