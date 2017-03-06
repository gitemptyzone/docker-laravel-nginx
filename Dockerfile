FROM nginx:latest

MAINTAINER "Junewon Park" <emptyzone@gmail.com>

WORKDIR /tmp

# Apply Nginx configuration
ADD config/nginx.conf /etc/nginx/nginx.conf
ADD config/default.conf /etc/nginx/conf.d/default.conf
ADD config/upstream.conf /etc/nginx/conf.d/upstream.conf

# Nginx startup script
ADD config/nginx-start.sh /opt/bin/nginx-start.sh
RUN chmod u=rwx /opt/bin/nginx-start.sh

RUN mkdir -p /data
VOLUME ["/data"]

# PORTS
EXPOSE 80
EXPOSE 443

WORKDIR /opt/bin
CMD ["nginx"]
