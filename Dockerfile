FROM ubuntu:23.10

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
    && apy-get install -y python3-requests \
    && apt-get install -y libssl-dev

RUN cd /home \
    && git clone https://github.com/biomed12/simplest-cmake.git \
    && mv simplest-cmake app \
    && cd app && mkdir build && cd build \
    && cmake ..\
    && cmake --build .\
    && ./main