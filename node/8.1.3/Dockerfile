FROM node:8.1.3
MAINTAINER CDEBase


COPY sshd_config /etc/ssh/

RUN mkdir -p /home/LogFiles \
     && echo "root:Docker!" | chpasswd \
     && echo "cd /home" >> /etc/bash.bashrc \
     && apt update \
     && apt install -y --no-install-recommends openssh-server vim curl wget tcptraceroute

RUN  mkdir /opt/pm2 \
     && chmod 777 /opt/pm2 \
     && ln -s /opt/pm2/node_modules/pm2/bin/pm2 /usr/local/bin/pm2

USER node

RUN cd /opt/pm2 \
  && npm install pm2 

USER root

EXPOSE 2222 8080

ENV PM2HOME /pm2home

ENV PORT 8080

ENV PATH ${PATH}:/home/site/wwwroot

WORKDIR /home/site/wwwroot

ENTRYPOINT ["sh"]
