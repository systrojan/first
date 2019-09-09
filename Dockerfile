FROM nginx:alpine
LABEL maintainer="irchi.calm@gmail.com"

# Update Software repository
RUN apt-get update

#Define the ENV variable
ENV nginx_vhost /etc/nginx/sites-available/default
ENV nginx_conf /etc/nginx/nginx.conf

# Volume configuration
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]