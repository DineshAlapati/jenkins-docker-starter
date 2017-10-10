FROM alpine:latest
MAINTAINER DineshAlapati

RUN apk add --update nginx && rm -rf /var/cache/apk/*

RUN rm /etc/nginx/conf.d/default.conf

COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]