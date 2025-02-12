FROM nginx:alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./uwsgi_params /etc/nginx/uwsgi_params

USER root

RUN mkdir -p /vol/static /vol/media /var/www/certbot && \
    chmod -R 755 /vol/static /vol/media /var/www/certbot && \
    chown -R nginx:nginx /vol/static /vol/media /var/www/certbot

RUN mkdir -p /etc/letsencrypt/live/chillyme.shop/ && \
    mkdir -p /etc/letsencrypt/archive/chillyme.shop/ && \
    chown -R nginx:nginx /etc/letsencrypt/live/chillyme.shop/ && \
    chown -R nginx:nginx /etc/letsencrypt/archive/chillyme.shop/