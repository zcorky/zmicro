FROM ubuntu:20.04

LABEL Author=Zero<tobewhatwewant@gmail.com>

ARG   DEBIAN_FRONTEND=noninteractive

RUN   sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN   apt update && apt install -y curl wget git

RUN   curl -o- https://raw.githubusercontent.com/zcorky/zmicro/master/install | bash
