 FROM alpine

RUN apk update && apk upgrade
RUN apk add nginx
#COPY index.html /usr/share/nginx/html/
#FROM ubuntu:18.04
#RUN apt-get update && apt-get install -y nginx
EXPOSE 80 443
COPY ./www/index.html /usr/share/nginx/html/index.html
COPY ./www/default.conf /etc/nginx/http.d/default.conf
CMD ["nginx","-g","daemon off;"]

# CMD ["nginx","-g","daemon off;"]