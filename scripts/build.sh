#!/usr/bin/env sh
sha="$(git rev-parse --short HEAD)"
echo "⏳ building $(tput bold)${sha}$(tput sgr0)..."
docker build . \
  -t 727419036083.dkr.ecr.us-east-1.amazonaws.com/postgres-dev:latest \
  -t 727419036083.dkr.ecr.us-east-1.amazonaws.com/postgres-dev:"$sha"
echo "✅ done"