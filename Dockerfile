
FROM nginx:latest

COPY http.html /usr/share/nginx/html/http.html
COPY https.html /usr/share/nginx/html/https.html
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY http.conf /etc/nginx/nginx.conf

