FROM shiphp/nginx-env

# default conf for proxy service
COPY ./default.conf /etc/nginx/conf.d/default.conf

# NOT FOUND response
COPY ./backend-not-found.html /var/www/html/backend-not-found.html

# Proxy configurations
COPY ./includes/ /etc/nginx/includes/

COPY wait-for-it /usr/local/bin

ENV PROXY_DEFAULT_PORT=${PROXY_DEFAULT}
ENV PROXY_HOST=${PROXY_HOST}
ENV PROXY_MAX_UPLOAD_SIZE=${PROXY_MAX_UPLOAD_SIZE}

CMD ["/usr/local/bin/start.sh"]
