FROM golang:1.19.1-alpine
MAINTAINER Raymond Wen

ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH

RUN apk update && apk add zeromq-dev alpine-sdk
WORKDIR $GOPATH
