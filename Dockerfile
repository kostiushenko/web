FROM ubuntu:20.04

ENV TZ Europe/Moscow

ARG DEBIAN_FRONTEND=noninteractive


FROM nginx:latest

# RUN mkdir -p /var/log/nginx/; chown -R www:www /var/log/nginx/

COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

RUN ls -lh /etc/nginx/conf.d/; ls -lh /usr/share/nginx/html/; cat /usr/share/nginx/html/index.html

RUN df -h

# EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off"]
