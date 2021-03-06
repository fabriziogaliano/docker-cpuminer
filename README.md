# docker-cpuminer
Docker image multi-threaded CPU miner for MONER and Other cryptocurrencies


# SCRYPT ( LITECOIN [LTC] / BITCOIN [BTC] / DASH - and other crypto )

```
ex1: docker run fabriziogaliano/docker-cpuminer:v1.0.0\
--algo scrypt/sha256/x11 \
--url xxxx --user xxxx --pass xxxx

ex2: docker run fabriziogaliano/cpuminer \
-a scrypt / sha256 / x11 / ecc... -o stratum+tcp://pool.crypto.domain:3333 \
-u user01 -p password01
```
#

# CRYPTONIGHT ( MONERO [XMR] )

```
Example01: 
docker run fabriziogaliano/docker-cpumine:cryptonight \
-a cryptonight \
-o stratum+tcp://pool.supportxmr.com:5555 \
-u 46VepA9vrkhYN5tb2c27KnK4TZZr3vtJ9DErrxRGfrEBUFnwTJHryG6PcYtwaPq92CZ92FNDd5r5iTTy9V6cXxtn4hRPDcz \
-p w01:fabrikorn555@hotmail.com

```

Username / Password Samples
## Standard wallet address (Monero CLI wallet/Monero GUI wallet/MyMonero wallet)
```
Username : 43To46Y9AxNFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKAX8bsUW

(e.g. miner.exe -u 43To46Y9AxNFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKAX8bsUW -p worker)
```
## Standard wallet address with fixed difficulty of 3500 for the worker
```
Username : 43To46Y9AxNFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKAX8bsUW+3500

(e.g. miner.exe -u 43To46Y9AxNFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKAX8bsUW+3500 -p worker)
```
## Integrated address, good for withdrawing to an exchange (eg. Poloniex, Kraken, TuxExchange), or if you want to use an integrated address
```
Username : 4DAU4uMdnDtFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKF82nvn2H6jg9SUywAX

(e.g. miner.exe -u 4DAU4uMdnDtFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKF82nvn2H6jg9SUywAX -p worker)
```
## Standard address with paymentID, good for withdrawing to an exchange that does not use an integrated address, or if you want to use a specific paymentID
```
Username : 43To46Y9AxNFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKAX8bsUW.6FEBAC2C05EDABB16E451D824894CC48AE8B645A48BD4C4F21A1CC8624EB0E6F

(e.g. miner.exe -u 43To46Y9AxNFkY5rsMQaLwbRNaxLZVvc4LJZt7Cx9Dt23frL6aut2uC3PsMiwGY5C5fKLSn6sWyoxRQTK1dhdBpKAX8bsUW.6FEBAC2C05EDABB16E451D824894CC48AE8B645A48BD4C4F21A1CC8624EB0E6F -p worker)
## Miner identifier of Alan
Password : Alan

(e.g. miner.exe -u paymentAddress -p Alan)
## Miner identifier of Steve, and register an account with the e-mail address as password
Password : Steve:test@e-mail.com

(e.g. miner.exe -u paymentAddress -p Alan:test@e-mail.com)
```
