FROM lukems/node_alpine:9.4.0
MAINTAINER CDEBase

COPY sshd_config /etc/ssh/

RUN echo "ipv6" >> /etc/modules

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/community" >> /etc/apk/repositories; \
    echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/main" >> /etc/apk/repositories;

RUN npm install -g pm2 \
     && mkdir -p /home/LogFiles \
     && echo "root:Docker!" | chpasswd \
     && echo "cd /home" >> /etc/bash.bashrc \
     && apk update --no-cache \
     && apk add openssh \
     && apk add openrc \
     && apk add vim \
     && apk add curl \
     && apk add wget \
     && apk add tcptraceroute \
     && apk add bash


EXPOSE 2222 8080

ENV PM2HOME /pm2home

ENV PORT 8080

ENV PATH ${PATH}:/home/site/wwwroot

WORKDIR /home/site/wwwroot

ENTRYPOINT ["sh"]
