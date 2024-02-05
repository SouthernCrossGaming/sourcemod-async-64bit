FROM ubuntu:20.04

RUN apt update
RUN dpkg --add-architecture i386
RUN apt update && apt install -y git python3 python3-pip wget libtool automake

RUN mkdir /sdks
RUN git clone https://github.com/alliedmodders/sourcemod --recurse-submodules
RUN git clone https://github.com/alliedmodders/metamod-source --recurse-submodules -b 1.11-dev
RUN git clone https://github.com/alliedmodders/hl2sdk --recurse-submodules -b tf2 /sdks/hl2sdk-tf2
RUN git clone https://github.com/alliedmodders/hl2sdk --recurse-submodules -b sdk2013 /sdks/hl2sdk-sdk2013
RUN git clone https://github.com/alliedmodders/ambuild --recurse-submodules
RUN git clone https://github.com/alliedmodders/hl2sdk-manifests /sdks/hl2sdk-manifests
RUN git clone https://github.com/alliedmodders/amtl /public/amtl
RUN mkdir /curl && wget -qO- https://github.com/curl/curl/releases/download/curl-8_6_0/curl-8.6.0.tar.gz | tar xvz -C /curl --strip-components=1
RUN git clone https://github.com/bagder/libbrotli.git

RUN apt install -y \
    g++-multilib \
    libtool \
    nasm \
    libiberty-dev:i386 \
    libelf-dev:i386 \
    libboost-dev:i386 \
    libbsd-dev:i386 \
    libunwind-dev:i386 \
    lib32stdc++-10-dev \
    lib32z1-dev \
    libc6-dev:i386 \
    linux-libc-dev:i386 \
    libuv1-dev \
    build-essential \
    libssl-dev \
    libc-ares-dev \
    libbrotli-dev

RUN cp /usr/bin/gcc /usr/bin/gcc-11

RUN pip install ./ambuild

RUN cd /libbrotli && git submodule update --init --recursive && ./autogen.sh && ./configure CC=gcc CFLAGS=-m64
RUN cd /curl && ./configure CC=gcc CFLAGS='-m64 -fPIC' --disable-shared --enable-ares --with-openssl --with-zlib --without-libidn2 --disable-ldap --disable-ftp --disable-file --disable-dict --disable-telnet --disable-tftp --disable-rtsp --disable-pop3 --disable-imap --disable-smtp --disable-gopher --disable-rtmp --disable-smb --with-nghttp2 --with-brotli --without-libpsl && make install