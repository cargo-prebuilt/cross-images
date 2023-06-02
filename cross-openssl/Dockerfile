ARG TARGET
FROM ghcr.io/cargo-prebuilt/cross-auditable:$TARGET

WORKDIR /

ENV OPENSSL_INCLUDE_DIR=/usr/local/include
ENV OPENSSL_LIB_DIR=/usr/local/lib

COPY openssl.deb .
RUN dpkg -i openssl.deb
RUN rm -f openssl.deb
