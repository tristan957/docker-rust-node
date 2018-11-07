FROM node:8-slim

RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain stable -y
RUN export PATH=$HOME/.cargo/bin:$PATH
RUN apt-get update && apt-get install libcurl4-openssl-dev \
    libelf-dev \
    libdw-dev \
    cmake \
    gcc \
    binutils-dev \
    libiberty-dev
