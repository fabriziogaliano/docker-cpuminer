#
# Dockerfile for multi-cpuminer MONERO (XMR) and other crypto [cryptonight - scrypt - sha256d - keccak - quark - heavy - skein - shavite3 - blake - fresh - x11 - x13 - x14 - x15]
# example for MONERO (XMR) :
# docker run fabriziogaliano/cpuminer -a cryptonight \
# -o stratum+tcp://pool.supportxmr.com:5555 \
# -u 46VepA9vrkhYN5tb2c27KnK4TZZr3vtJ9DErrxRGfrEBUFnwTJHryG6PcYtwaPq92CZ92FNDd5r5iTTy9V6cXxtn4hRPDcz \
# -p w01:fabrikorn555@hotmail.com
#
#

FROM            ubuntu:16.04
MAINTAINER      Fabrizio Galiano <fabrizio.galiano@hotmail.com>

RUN             apt-get update -qq

RUN             apt-get install -qqy automake
RUN             apt-get install -qqy libcurl4-openssl-dev
RUN             apt-get install -qqy git
RUN             apt-get install -qqy make

RUN             git clone https://github.com/lucasjones/cpuminer-multi.git

RUN             cd cpuminer && ./autogen.sh
RUN             cd cpuminer && ./configure CFLAGS="-O3"
RUN             cd cpuminer && make

WORKDIR         /cpuminer
ENTRYPOINT      ["./minerd"]