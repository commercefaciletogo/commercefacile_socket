FROM                    node:latest

MAINTAINER              thomasdolar@gmail.com

ENV                     APP_ENV=production

RUN                     npm install -g laravel-echo-server

#VOLUME                  /var/www/socket

#WORKDIR                 /var/www/socket

COPY                    laravel-echo-server.json laravel-echo-server.json

ENTRYPOINT              ["laravel-echo-server", "start"]