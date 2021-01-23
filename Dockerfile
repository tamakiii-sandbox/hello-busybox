FROM debian:10.7

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      libncurses5-dev \
      make \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work/deps/mirror/busybox

COPY ./deps/mirror/busybox /work/deps/mirror/busybox
