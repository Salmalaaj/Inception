FROM debian:bullseye

RUN apt-get update && apt-get install -y openssl nginx

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=MA/ST=BG/L=BG/O=1337/OU=www.slaajour.ma/CN=slaajour.42.fr" \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt

COPY ./conf/nginx.conf /etc/nginx/conf.d/slaajour.conf

CMD ["nginx", "-g", "daemon off;"]
