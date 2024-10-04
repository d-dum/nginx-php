FROM nginx:stable-bookworm

RUN apt update && apt upgrade -y 
RUN apt install -y php8.2 php8.2-fpm && mkdir /app

COPY ./nginx-config.conf /etc/nginx/nginx.conf
COPY ./start_server.sh /app/start_server
COPY ./php.ini /etc/php/8.2/fpm/php.ini

CMD [ "/app/start_server" ]