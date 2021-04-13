#!/usr/bin/env sh
sha="$(git rev-parse --short HEAD)"
echo "⏳ pushing $(tput bold)${sha}$(tput sgr0)..."
docker push --all-tags 727419036083.dkr.ecr.us-east-1.amazonaws.com/postgres-dev
echo "✅ done"