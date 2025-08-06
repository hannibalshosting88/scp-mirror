#!/bin/bash

# Clean previous content
rm -rf css images scp series tale

# Mirror everything (no size restrictions!)
wget -m -np -nH --cut-dirs=1 -R "index.html*" https://scp-data.tedivm.com/ -P .

# Optional: Print large file warnings
echo "🔍 Large files detected:"
find . -type f -size +25M -exec du -h {} +
