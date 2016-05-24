FROM go:1.6-alpine
MAINTAINER Raymond Wen

ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
RUN apk update && apk add zeromq-dev alpine-sdk
WORKDIR $GOPATH
