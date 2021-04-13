#!/usr/bin/env sh
echo "⏳ logging into AWS ECR..."
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 727419036083.dkr.ecr.us-east-1.amazonaws.com
echo "✅ done"