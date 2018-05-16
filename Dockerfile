FROM ubuntu:14.04

#First
RUN apt-get update
RUN apt-get install -y apt-transport-https curl git
RUN sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
RUN sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list >     /etc/apt/sources.list.d/dart_stable.list'
RUN apt-get update
RUN apt-get install dart
env PATH $PATH:/usr/lib/dart/bin

WORKDIR /app

COPY pubspec.yaml /app
COPY ./web/ /app/web
COPY ./lib/ /app/lib

RUN pub get

RUN pub build

#Second
FROM nginx:1.13

COPY --from=0 /app/build/ /usr/share/nginx/html

COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf