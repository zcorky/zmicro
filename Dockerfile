FROM ubuntu:20.04

LABEL Author=Zero<tobewhatwewant@gmail.com>

RUN curl -o- https://raw.githubusercontent.com/zcorky/zmicro/master/install | bash
