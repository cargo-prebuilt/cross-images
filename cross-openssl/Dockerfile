ARG TARGET
FROM ghcr.io/cargo-prebuilt/cross-auditable:$TARGET
ARG TARGET
ARG BUILD_COMBO

SHELL ["/bin/bash", "-c"]

ENV OPENSSL_DIR=$CROSS_SYSROOT

RUN --mount=type=bind,source=openssl,target=/openssl,rw <<EOT
    set -euxo pipefail

    cd /openssl

    case "$CROSS_TOOLCHAIN_PREFIX" in
        *freebsd*)
            CC="$CROSS_TOOLCHAIN_PREFIX"gcc AR="$CROSS_TOOLCHAIN_PREFIX"ar ./Configure $BUILD_COMBO \
                --libdir=lib --prefix=/usr/local --openssldir=/usr/local/ssl \
                no-dso no-shared no-ssl3 no-tests no-comp \
                no-legacy no-camellia no-idea no-seed
            ;;
        *)
            CC="$CROSS_TOOLCHAIN_PREFIX"gcc AR="$CROSS_TOOLCHAIN_PREFIX"ar ./Configure $BUILD_COMBO \
                --libdir=lib --prefix=$CROSS_SYSROOT --openssldir=$CROSS_SYSROOT/ssl \
                no-dso no-shared no-ssl3 no-tests no-comp \
                no-legacy no-camellia no-idea no-seed
            ;;
    esac

    make "-j$(nproc)"
    make "-j$(nproc)" install_sw
    make "-j$(nproc)" install_ssldirs
EOT
