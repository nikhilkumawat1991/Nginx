################################################################################
# Copyright (C) Veea Systems Limited - All Rights Reserved.
# Unauthorised copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential. [2019-2020]
################################################################################
#BEGIN vhc05
FROM arm32v7/nginx:stable-alpine as nginx_stage
#END

#BEGIN vhx09-10
FROM arm64v8/nginx:stable-alpine as nginx_stage
#END

COPY src/html /usr/share/nginx/html

WORKDIR /app

RUN mkdir /nginx

COPY src/loop.sh /app/	

RUN chmod 777 /app/loop.sh 

COPY src/nginx.conf /etc/nginx/

RUN chmod -R 777 /var/cache/nginx /run/ /app/ /docker-entrypoint.d /nginx/

ENV NGINX_PORT=9071

EXPOSE 9071

COPY src/default.conf /etc/nginx/conf.d

# CMD ["nginx","-g","daemon off;"]
CMD ["/app/loop.sh"]
