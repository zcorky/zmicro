FROM ubuntu:22.04

ARG VERSION

ARG DEBIAN_FRONTEND=noninteractive

LABEL org.opencontainers.image.ref.name="zmicro"

LABEL org.opencontainers.image.version=$VERSION

LABEL org.opencontainers.image.author="Zero<tobewhatwewant@gmail.com>"

# RUN   sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN apt update && apt install -y curl wget git sudo systemd make gcc g++ iputils-ping dnsutils && rm -rf /var/lib/apt/lists/*

ENV TZ="Asia/Shanghai"

ENV USER=root

RUN curl -o- https://raw.githubusercontent.com/zcorky/zmicro/master/install | CI=true bash

RUN zmicro config timezone

RUN zmicro config locale

RUN zmicro package install gzfly

RUN zmicro package install gzssh

RUN zmicro package install gzterminal

RUN zmicro package install docker

RUN zmicro package install docker-compose

RUN zmicro package install docker-buildx
