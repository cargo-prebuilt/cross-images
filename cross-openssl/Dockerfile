# TODO: Combine Dockerfiles?
ARG TARGET
FROM ghcr.io/cargo-prebuilt/cross-auditable:$TARGET

WORKDIR /

COPY openssl.deb .
RUN dpkg -i openssl.deb
RUN rm -f openssl.deb

RUN pkg-config --cflags openssl
