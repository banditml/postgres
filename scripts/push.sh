#!/usr/bin/env sh
sha="$(git rev-parse --short HEAD)"
echo "⏳ logging into AWS ECR..."
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 727419036083.dkr.ecr.us-east-1.amazonaws.com
echo "⏳ pushing $(tput bold)${sha}$(tput sgr0)..."
docker push --all-tags 727419036083.dkr.ecr.us-east-1.amazonaws.com/postgres-dev
echo "✅ done"