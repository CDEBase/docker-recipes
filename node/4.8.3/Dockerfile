FROM node:4.8.3
MAINTAINER CDEBase


COPY sshd_config /etc/ssh/

RUN npm install -g pm2 \
     && mkdir -p /home/LogFiles \
     && echo "root:Docker!" | chpasswd \
     && echo "cd /home" >> /etc/bash.bashrc \
     && apt update \
     && apt install -y --no-install-recommends openssh-server vim curl wget tcptraceroute

EXPOSE 2222 8080

ENV PM2HOME /pm2home

ENV PORT 8080

ENV PATH ${PATH}:/home/site/wwwroot

WORKDIR /home/site/wwwroot

ENTRYPOINT ["sh"]
