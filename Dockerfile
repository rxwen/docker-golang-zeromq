FROM golang
MAINTAINER Raymond Wen

ENV ZEROMQ_VERSION 4.1.4
RUN apt-get update && apt-get install -y pkg-config unzip libtool autoconf
RUN wget https://github.com/jedisct1/libsodium/archive/stable.zip && unzip stable.zip && rm stable.zip && cd libsodium-stable && ./configure && make && make install && cd .. && rm -rf libsodium-stable
RUN wget http://download.zeromq.org/zeromq-4.1.4.tar.gz && tar -xvf zeromq-${ZEROMQ_VERSION}.tar.gz && rm zeromq-${ZEROMQ_VERSION}.tar.gz && cd zeromq-${ZEROMQ_VERSION} && ./configure && make && make install && cd .. && rm -rf zeromq-${ZEROMQ_VERSION}
