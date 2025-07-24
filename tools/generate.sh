#!/usr/bin/env bash

# Get to source folder.
cd "$(dirname "$0")/../src" || exit

npx @rose-pine/build -t ./template.json -o .
