ARG BUILDER_VERSION
FROM odaceo/builder:${BUILDER_VERSION}

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ARG GOLANG_VERSION
ARG GOPATH=/go
ENV GOPATH ${GOPATH}
ENV PATH ${GOPATH}/bin:$PATH
COPY scripts/golang.sh /root/
RUN set -eux; /root/golang.sh

COPY scripts/godep.sh /root/
RUN set -eux; /root/godep.sh
