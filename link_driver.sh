#!/usr/bin/env bash
set -e
TAG="frosty-forest-hidden-forest"
LIB="spectral-keel.a"
URL="https://github.com/xichasefz/dusklatticehub/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
