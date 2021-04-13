#!/usr/bin/env sh
sha="$(git rev-parse --short HEAD)"
echo "⏳ building $(tput bold)${sha}$(tput sgr0)..."
docker build . -t postgres-dev:latest -t postgres-dev:"$sha"
echo "✅ done"