FROM shiphp/nginx-env

# default conf for proxy service
COPY ./default.conf /etc/nginx/conf.d/default.conf

# NOT FOUND response
COPY ./backend-not-found.html /var/www/html/backend-not-found.html

# Proxy configurations
COPY ./includes/ /etc/nginx/includes/

COPY wait-for-it.sh /usr/local/bin

ENV PROXY_DEFAULT_PORT=${PROXY_DEFAULT}
ENV PROXY_HOST=${PROXY_HOST}

CMD ["/usr/local/bin/wait-for-it.sh", "web:8080", "--", "/usr/local/bin/start.sh"]
