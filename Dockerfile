
FROM nginx:latest

COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template

COPY docker-entrypoint.sh /


COPY http.html /usr/share/nginx/html/http.html
COPY https.html /usr/share/nginx/html/https.html
RUN rm -rf /etc/nginx/conf.d/default.conf

RUN rm -rf /usr/share/nginx/html/index.html
#COPY nginx.conf /etc/nginx/conf.d/nginx.conf
RUN rm -rf /etc/nginx/nginx.conf
COPY http.conf /etc/nginx/nginx.conf
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
