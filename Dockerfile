FROM ubuntu:focal-20200925

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gcc-10-powerpc64-linux-gnu \
    gcc-10-powerpc64le-linux-gnu \
    bc \
    bison \
    bsdmainutils \
    ccache \
    flex \
    g++ \
    gcc \
    git \
    kmod \
    libssl-dev \
    libelf-dev \
    libncurses-dev \
    lzop \
    make \
    tar \
    tmux \
    u-boot-tools \
    wget \
    xz-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/powerpc64-linux-gnu-cpp-10 /usr/bin/powerpc64-linux-gnu-cpp && \
    ln -s /usr/bin/powerpc64-linux-gnu-gcc-10 /usr/bin/powerpc64-linux-gnu-gcc && \
    ln -s /usr/bin/powerpc64-linux-gnu-gcc-ar-10 /usr/bin/powerpc64-linux-gnu-gcc-ar && \
    ln -s /usr/bin/powerpc64-linux-gnu-gcc-nm-10 /usr/bin/powerpc64-linux-gnu-gcc-nm && \
    ln -s /usr/bin/powerpc64-linux-gnu-gcc-ranlib-10 /usr/bin/powerpc64-linux-gnu-gcc-ranlib && \
    ln -s /usr/bin/powerpc64-linux-gnu-gcov-10 /usr/bin/powerpc64-linux-gnu-gcov && \
    ln -s /usr/bin/powerpc64-linux-gnu-gcov-dump-10 /usr/bin/powerpc64-linux-gnu-gcov-dump && \
    ln -s /usr/bin/powerpc64-linux-gnu-gcov-tool-10 /usr/bin/powerpc64-linux-gnu-gcov-tool && \
    ln -s /usr/bin/powerpc64-linux-gnu-lto-dump-10 /usr/bin/powerpc64-linux-gnu-lto-dump

RUN ln -s /usr/bin/powerpc64le-linux-gnu-cpp-10 /usr/bin/powerpc64le-linux-gnu-cpp && \
    ln -s /usr/bin/powerpc64le-linux-gnu-gcc-10 /usr/bin/powerpc64le-linux-gnu-gcc && \
    ln -s /usr/bin/powerpc64le-linux-gnu-gcc-ar-10 /usr/bin/powerpc64le-linux-gnu-gcc-ar && \
    ln -s /usr/bin/powerpc64le-linux-gnu-gcc-nm-10 /usr/bin/powerpc64le-linux-gnu-gcc-nm && \
    ln -s /usr/bin/powerpc64le-linux-gnu-gcc-ranlib-10 /usr/bin/powerpc64le-linux-gnu-gcc-ranlib && \
    ln -s /usr/bin/powerpc64le-linux-gnu-gcov-10 /usr/bin/powerpc64le-linux-gnu-gcov && \
    ln -s /usr/bin/powerpc64le-linux-gnu-gcov-dump-10 /usr/bin/powerpc64le-linux-gnu-gcov-dump && \
    ln -s /usr/bin/powerpc64le-linux-gnu-gcov-tool-10 /usr/bin/powerpc64le-linux-gnu-gcov-tool && \
    ln -s /usr/bin/powerpc64le-linux-gnu-lto-dump-10 /usr/bin/powerpc64le-linux-gnu-lto-dump
