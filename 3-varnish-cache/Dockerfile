FROM ubuntu:16.10

MAINTAINER Anselmo Pfeifer: 0.1

ENV DEBIAN_FRONTEND noninteractive
ENV PACOTES="varnish"
ENV VARNISH_PORT 6081

RUN apt-get update
RUN apt-get -y install $PACOTES
RUN apt-get autoremove
RUN apt-get autoclean

RUN rm -rf /var/lib/apt/lists/*

COPY varnish /etc/default/varnish
COPY default.vcl /etc/varnish/default.vcl

EXPOSE 6081

VOLUMES ["/var/lib/varnish", "/etc/varnish"]
ADD start.sh /start.sh
CMD ["/start.sh"]
