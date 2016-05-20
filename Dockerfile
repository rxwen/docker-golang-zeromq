FROM alpine
MAINTAINER Raymond Wen

RUN apk update && apk add zeromq-dev go alpine-sdk
