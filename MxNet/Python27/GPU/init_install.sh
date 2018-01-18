#!/bin/bash

rm -rf /var/lib/apt/lists/* \
       /etc/apt/sources.list.d/cuda.list \
       /etc/apt/sources.list.d/nvidia-ml.list && \

apt-get update && \


DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    cmake \
    wget \
    git \
    vim \
    nano \
    python-pip \
    python-dev \
    libatlas-base-dev

pip install --upgrade pip setuptools
pip --no-cache-dir install --upgrade -r requirements.txt

ldconfig && \
apt-get clean && \
apt-get autoremove && \
rm -rf /var/lib/apt/lists/* /tmp/* ~/*
