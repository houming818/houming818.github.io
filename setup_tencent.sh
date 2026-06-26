#!/bin/bash
set -e

HUGO_VERSION="0.160.1"
HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"

echo "=== Installing Hugo v${HUGO_VERSION} ==="
curl -L -s -o /tmp/hugo.tar.gz "$HUGO_URL"
tar xzf /tmp/hugo.tar.gz -C /usr/local/bin/
hugo version
echo "=== Done ==="
