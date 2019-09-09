FROM nginx:alpine
LABEL maintainer="irchi.calm@gmail.com"

# Update Software repository

#Define the ENV variable
#ENV nginx_vhost /etc/nginx/sites-available/default
#ENV nginx_conf /etc/nginx/nginx.conf

# Volume configuration
#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

## Make a copy of default configuration file
RUN cp /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.orig \
    && mkdir /usr/share/nginx/html/images \ && touch /usr/share/nginx/html/images/index.html

COPY index.html /usr/share/nginx/html/index.html
COPY default.conf /etc/nginx/conf.d/default.conf

ADD 400.html /usr/share/nginx/html/
ADD 401.html /usr/share/nginx/html/
ADD 404.html /usr/share/nginx/html/
ADD 500.html /usr/share/nginx/html/

EXPOSE 8000

#CMD ["nginx", "-g", "daemon off;"]
