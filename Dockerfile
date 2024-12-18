#FROM nginx:1.20.1-alpine
FROM nginx:latest
#FROM nginx:1.23.1-alpine
#FROM reg.edgecnf.com/ngx/ngx-plus:v4.0

RUN apt-get update
RUN rm /etc/nginx/conf.d/*
RUN chown 101:0 /var/cache/nginx /var/run /var/log/nginx /etc/nginx /etc/nginx/conf.d
RUN chmod 777 /var/cache/nginx /var/run /var/log/nginx /etc/nginx /etc/nginx/conf.d

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./docs/_build/html /usr/share/nginx/html/
COPY ./.htpasswd /etc/nginx/

COPY nginx.conf /etc/nginx/nginx.conf

RUN sed -i.bak 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf
RUN sed -i.bak 's/listen\(.*\)443/listen 8443/' /etc/nginx/conf.d/default.conf
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf
#RUN chmod go+rw /etc/nginx/nginx.conf
RUN chmod -R go+rw /etc/nginx

USER 101
EXPOSE 8080 8443
CMD ["nginx", "-g", "daemon off;"]
