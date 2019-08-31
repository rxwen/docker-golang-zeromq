FROM golang:1.12.9-alpine
MAINTAINER Raymond Wen

ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH

RUN apk update && apk add zeromq-dev alpine-sdk
WORKDIR $GOPATH
