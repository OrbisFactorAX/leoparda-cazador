#!/usr/bin/env bash

echo "Enabling Debug Mode..."
export DEBUG=*

echo "Downloading Ubuntu Master Image..."
curl -lO https://github.com/dockerfile/ubuntu/archive/master.zip

echo "Unzipping Ubuntu Master..."
unzip -f ubuntu-master.zip

echo "Building Docker Master Image..."
cd ubuntu-master
docker build -t bradserbu/nodus-ubuntu .


