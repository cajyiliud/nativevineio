#!/usr/bin/env bash
set -e
LIB="yew-furnace.a"
TAG="golden-harbor-gentle-harbor"
REPO="cajyiliud/nativevineio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
