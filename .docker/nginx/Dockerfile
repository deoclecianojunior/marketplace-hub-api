FROM nginx:latest

COPY nginx.conf /etc/nginx/

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

CMD ["nginx", "-g", "daemon off;"]
