ARG TARGET
FROM ghcr.io/cargo-prebuilt/cross-auditable:$TARGET

RUN apt update && apt upgrade -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /

COPY openssl.deb .
RUN dpkg -i openssl.deb
RUN rm -f openssl.deb
