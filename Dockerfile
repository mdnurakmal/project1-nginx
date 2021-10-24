
FROM nginx:latest


COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template

ARG WEB_URL
RUN echo HELLO $WEB_URL
ENV _WEB_URL = $WEB_URL
COPY docker-entrypoint.sh /

COPY http.html /usr/share/nginx/html/http.html
COPY https.html /usr/share/nginx/html/https.html

# REMOVING DEFAULT FILES
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/index.html

#COPY nginx.conf /etc/nginx/conf.d/nginx.conf
RUN rm -rf /etc/nginx/nginx.conf

# REMOVING DEFAULT HTTP CONF
COPY http.conf /etc/nginx/nginx.conf

RUN chmod +x docker-entrypoint.sh
RUN ["/docker-entrypoint.sh"]

