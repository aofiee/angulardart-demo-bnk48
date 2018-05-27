FROM neomatic/angulardart

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