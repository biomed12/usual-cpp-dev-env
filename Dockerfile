FROM ubuntu:latest

RUN apt-get -y update

RUN apt-get install -y build-essential \
    && apt-get install -y libboost-all-dev \
    && apt-get install -y cmake \
    && apt-get install -y nano \
    && apt-get install -y git \
    && apt-get install -y clang-format \
    && apt-get install -y curl \
    && apt-get install -y python3-full \
    && apt-get install -y python3-pip \
    && apt-get install -y python3-requests \
    && apt-get install -y libssl-dev \
    && apt-get install -y libbenchmark-dev \
    && apt-get install -y libgtest-dev \
    && apt-get install -y libgmock-dev \
    && apt-get install -y libspdlog-dev \
    && apt-get install -y gbd

RUN cd /home \
    && git clone https://github.com/biomed12/simplest-cmake.git \
    && mv simplest-cmake app \
    && cd app && mkdir build && cd build \
    && cmake ..\
    && cmake --build .\
    && ./main
