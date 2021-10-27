FROM ubuntu:20.04

LABEL Author=Zero<tobewhatwewant@gmail.com>

# RUN   echo "199.232.68.133 raw.githubusercontent.com" >> /etc/hosts

ARG   DEBIAN_FRONTEND=noninteractive

RUN   sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN   apt update && apt install -y curl wget git sudo

ARG   VERSION

ENV   ZMICRO_VERSION=${VERSION}

RUN   echo "ZMICRO_VERSION => ${VERSION}"

ENV   USER=root

RUN   curl -o- https://raw.githubusercontent.com/zcorky/zmicro/master/install | bash
