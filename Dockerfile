FROM                    node:latest

MAINTAINER              thomasdolar@gmail.com

ENV                     APP_ENV=development

COPY                    . /var/www/socket

RUN                     npm install supervisor -g

RUN                     npm install

WORKDIR                 /var/www/socket

EXPOSE                  6001

ENTRYPOINT              ["supervisor", "socket.js"]