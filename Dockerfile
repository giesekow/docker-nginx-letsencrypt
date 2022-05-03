FROM alpine:3.14

USER root

RUN apk update && apk add nginx certbot-nginx

RUN mkdir -p /etc/nginx/sites-enabled

RUN sed -i '/include \/etc\/nginx\/http.d/a include \/etc\/nginx\/sites-enabled\/\*;' /etc/nginx/nginx.conf

COPY ./scripts/. .


CMD ["sh", "entrypoint.sh"]
