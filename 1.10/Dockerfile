FROM odaceo/builder:ubuntu18

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ARG GOLANG_VERSION=1.10.3
ARG GOPATH=/go
ARG GOLANG_INSTALL_DIR=/usr/local/go
ARG GODEP_VERSION=0.4.1

ENV GOPATH ${GOPATH}
ENV PATH ${GOPATH}/bin:${GOLANG_INSTALL_DIR}/bin:$PATH

ADD scripts/*.sh /root/
RUN set -eux; \
    /root/golang.sh; \
    /root/godep.sh
