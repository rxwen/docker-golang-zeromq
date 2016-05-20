FROM alpine
MAINTAINER Raymond Wen

ENV GOPATH /go
RUN apk update && apk add zeromq-dev go alpine-sdk
