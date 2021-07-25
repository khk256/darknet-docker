FROM ubuntu:18.04

FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && \
    apt-get install -qq --no-install-recommends --no-install-suggests -y gnupg2 ca-certificates \
    git \
    build-essential \
    libopencv-dev \
    && rm -rf /var/lib/apt/lists/*

COPY config.sh /tmp/

RUN git clone https://github.com/AlexeyAB/darknet.git && cd darknet \
    && /tmp/configure.sh \
    && make -j$(nproc) \
    && cp darknet /usr/local/bin \
    && cd .. && rm /tmp/configure.sh \
    && rm -rf darknet