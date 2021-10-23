
FROM nginx:latest

COPY http.html /usr/share/nginx/html/http.html
COPY https.html /usr/share/nginx/html/https.html

COPY nginx.conf /etc/nginx/conf.d/nginx.conf

