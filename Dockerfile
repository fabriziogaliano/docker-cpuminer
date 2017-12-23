#
# Dockerfile for multi-cpuminer MONERO (XMR) and other crypto [cryptonight - scrypt - sha256d - keccak - quark - heavy - skein - shavite3 - blake - fresh - x11 - x13 - x14 - x15]
# example for MONERO (XMR) :
# docker run fabriziogaliano/cpuminer -a cryptonight \
# -o stratum+tcp://my.pool.domain:5555 \
# -u WALLET_ADDRESS \
# -p WORKER_NAME:mymail@some.domain
#
#

FROM            ubuntu:16.04
MAINTAINER      Fabrizio Galiano <fabrizio.galiano@hotmail.com>

RUN             apt-get update -qq

RUN             apt-get install -qqy automake
RUN             apt-get install -qqy libcurl4-openssl-dev
RUN             apt-get install -qqy git
RUN             apt-get install -qqy make
RUN             apt-get install -qqy gcc
RUN             apt-get install -qqy pkg-config
RUN             apt-get install -qqy libssl-dev

RUN             git clone https://github.com/lucasjones/cpuminer-multi.git

RUN             cd cpuminer-multi \
                && bash ./autogen.sh \
                && bash ./configure CFLAGS="-O3" \
                && make

RUN             apt-get clean

WORKDIR         /cpuminer-multi
ENTRYPOINT      ["./minerd"]