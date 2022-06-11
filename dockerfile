FROM alpine:3.8

RUN apk update && apk upgrade
RUN apk add nginx
CMD ["systemctl start nginx","nginx","-g","daemon off;"]