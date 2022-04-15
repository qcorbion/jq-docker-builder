FROM alpine:latest

RUN apk add build-base libtool autoconf automake

WORKDIR /tmp

RUN wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-1.6.tar.gz && \
    tar -xf jq-1.6.tar.gz

WORKDIR /tmp/jq-1.6

RUN autoreconf -fi && \
    ./configure --with-oniguruma=builtin --disable-maintainer-mode && \
    make LDFLAGS=-all-static

RUN strip jq && \
    mkdir /finalBins && \
    mv jq /finalBins/
