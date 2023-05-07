#!/bin/bash

if [[ $CROSS_TOOLCHAIN_PREFIX =~ $TEST ]] ; then
    mkdir -p /nsl && cd /nsl \
    && curl -fsSL https://github.com/thkukuk/libnsl/archive/refs/tags/v2.0.0.tar.gz -o libnsl.tar.gz \
    && tar -xzvf libnsl.tar.gz \
    && rm -f libnsl.tar.gz \
    && cd "$(ls)" \
    && ./configure CC="$CC_x86_64_sun_solaris" CXX="$CXX_x86_64_sun_solaris" \
    && make \
    && make install ;
else echo "False" ; fi
