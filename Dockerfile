FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY conf.d /etc/nginx/
COPY sites/sites-available/ /etc/nginx/sites/

VOLUME /etc/nginx/external

ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["nginx"]

