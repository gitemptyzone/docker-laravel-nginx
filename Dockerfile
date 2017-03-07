FROM nginx:latest

MAINTAINER "Junewon Park" <emptyzone@gmail.com>

WORKDIR /tmp

# Apply Nginx configuration
ADD config/nginx.conf /etc/nginx/nginx.conf
ADD config/default.conf /etc/nginx/conf.d/default.conf
ADD config/upstream.conf /etc/nginx/conf.d/upstream.conf

RUN mkdir -p /data
VOLUME ["/data"]

# PORTS
EXPOSE 80
EXPOSE 443

WORKDIR /opt/bin
CMD ["nginx"]
