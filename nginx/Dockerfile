From alpine:3.18.3

RUN apk update && apk add nginx

RUN apk add openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/nginx.key \
-out /etc/ssl/certs/nginx.crt \
-subj "/C=MA/ST=SOUS MASA/L=TATA/O=1337/CN=nouakhro.42.com"

COPY ./nginx.conf /etc/nginx/http.d/

COPY ./index.html /var/www/html/

EXPOSE 443

CMD ["nginx" ,"-g", "daemon off;"]
