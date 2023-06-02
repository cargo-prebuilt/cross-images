ARG TARGET
FROM ghcr.io/cargo-prebuilt/cross-auditable:$TARGET
ARG TARGET
ARG BUILD_COMBO

ENV OPENSSL_INCLUDE_DIR=$CROSS_SYSROOT/include
ENV OPENSSL_LIB_DIR=$CROSS_SYSROOT/lib

RUN --mount=type=bind,source=openssl,target=/openssl <<EOT
    cd /openssl

    if [ ! -f "Makefile" ]; then
        CC="$CROSS_TOOLCHAIN_PREFIX"gcc AR="$CROSS_TOOLCHAIN_PREFIX"ar ./Configure $BUILD_COMBO \
            --libdir=lib --prefix=$CROSS_SYSROOT --openssldir=$CROSS_SYSROOT/ssl \
            no-dso no-shared no-ssl3 no-tests no-comp \
            no-legacy no-camellia no-idea no-seed
    fi

    make "-j$(nproc)"
    make "-j$(nproc)" install_sw
    make "-j$(nproc)" install_ssldirs
EOT
