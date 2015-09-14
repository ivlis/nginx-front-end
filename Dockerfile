FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY conf.d /etc/nginx
COPY sites-* /etc/nginx
