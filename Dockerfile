FROM alpine:3.14.4

RUN apk update
RUN apk add curl

COPY file.txt /etc/file.txt