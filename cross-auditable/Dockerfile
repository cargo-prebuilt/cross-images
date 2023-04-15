ARG TARGET
FROM ghcr.io/cross-rs/${TARGET}:main

RUN apt update && apt upgrade -y \
    && rm -rf /var/lib/apt/lists/*

COPY resources/cargo-auditable /bin
COPY cargo /bin
