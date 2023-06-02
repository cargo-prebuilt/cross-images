ARG TARGET
FROM ghcr.io/cargo-prebuilt/cross-auditable:$TARGET

ENV OPENSSL_INCLUDE_DIR=/usr/local/include
ENV OPENSSL_LIB_DIR=/usr/local/lib

RUN --mount=type=bind,source=openssl.deb,target=/openssl.deb <<EOT
    dpkg -i openssl.deb
EOT
