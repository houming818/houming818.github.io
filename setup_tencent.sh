#!/bin/bash
set -e

# This script runs as the BUILD COMMAND in Tencent Webify.
# The install command blocks arbitrary scripts, so use this as the build command instead.
#
# Webify 构建命令（填这个）：
#   bash setup_tencent.sh

HUGO_VERSION="0.160.1"
HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"

echo "=== Downloading Hugo v${HUGO_VERSION} ==="
curl -L -s -o ./hugo.tar.gz "$HUGO_URL"
tar xzf ./hugo.tar.gz
rm -f ./hugo.tar.gz
chmod +x ./hugo
echo "=== Building with Hugo ==="
./hugo
echo "=== Done ==="
