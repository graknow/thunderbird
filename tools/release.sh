#!/usr/bin/env bash

# Get to project root.
cd "$(dirname "$0")/.." || exit

./tools/generate.sh

mkdir -p build

cp ./src/rose-pine.json ./build/manifest.json
cp ./assets/logo-main.png ./build/icon.png
zip -j ./build/rose-pine.xpi ./build/manifest.json ./build/icon.png

cp ./src/rose-pine-moon.json ./build/manifest.json
cp ./assets/logo-moon.png ./build/icon.png
zip -j ./build/rose-pine-moon.xpi ./build/manifest.json ./build/icon.png

cp ./src/rose-pine-dawn.json ./build/manifest.json
cp ./assets/logo-dawn.png ./build/icon.png
zip -j ./build/rose-pine-dawn.xpi ./build/manifest.json ./build/icon.png

rm ./build/manifest.json
rm ./build/icon.png
