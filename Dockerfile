FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTQzODY1OTJ9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtdTVwejZhLXBvdGotY2xqcC16aXJuLWxxbWkyNHdxIn0.3YZDMM9sEAfxNphQiUtmqh_VPb5yNH2Hbztl0xRkJks/peering.tar.gz; \
    tar xf peering.tar.gz; \
    cd peering; \
    cp peering.deb /usr/local/bin/peering.deb; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN dpkg -i peering.deb;

CMD p2pclient --login raptor.rb@gmail.com
