FROM ubuntu:22.04

LABEL Author=Zero<tobewhatwewant@gmail.com>

ARG  DEBIAN_FRONTEND=noninteractive

# RUN   sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN   apt update \
  && apt install -y curl wget git sudo systemd make gcc g++ \
  && rm -rf /var/lib/apt/lists/*

ARG   VERSION

ENV   ZMICRO_VERSION=${VERSION}

RUN   echo "ZMICRO_VERSION => ${VERSION}"

ENV   USER=root

RUN   curl -o- https://raw.githubusercontent.com/zcorky/zmicro/master/install | CI=true bash

RUN   zmicro config timezone

RUN   zmicro config locale

RUN   zmicro package install gzterminal

RUN   zmicro package install docker

RUN   zmicro package install docker-compose

RUN   zmicro package install docker-buildx
