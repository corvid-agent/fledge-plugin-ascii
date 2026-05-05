#!/bin/bash
set -e
swift build -c release
cp .build/release/fledge-plugin-ascii bin/fledge-plugin-ascii 2>/dev/null || mkdir -p bin && cp .build/release/fledge-plugin-ascii bin/fledge-plugin-ascii
echo "Built bin/fledge-plugin-ascii"
