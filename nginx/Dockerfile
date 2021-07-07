#BEGIN vhx09-10
FROM arm64v8/ubuntu:18.04
#END

RUN apt-get update
RUN apt-get install -y nginx
COPY default /etc/nginx/sites-available/default
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/html/index.html
EXPOSE 9070
WORKDIR /app
COPY loop.sh /app/
RUN chmod -R 777 /var/ /app/ /etc/ /run/
CMD ["./loop.sh"]
