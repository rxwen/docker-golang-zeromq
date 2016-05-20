FROM alpine
MAINTAINER Raymond Wen

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin
RUN apk update && apk add zeromq-dev go alpine-sdk
