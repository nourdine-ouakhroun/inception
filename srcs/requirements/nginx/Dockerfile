From alpine:3.18.3

RUN apk update && apk add nginx

RUN apk add openssl

RUN openssl req -x509 -noenc -days 30 -newkey rsa:4096 \
-keyout /etc/ssl/private/nginx.key \
-out /etc/ssl/certs/nginx.crt \
-subj "/C=MA/ST=SOUS MASA/L=TATA/O=1337 med/CN=nouakhro.42.com"

COPY ./conf/nginx.conf /etc/nginx/http.d/

CMD ["nginx" ,"-g", "daemon off;"]
