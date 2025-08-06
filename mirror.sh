#!/bin/bash

# Clean previous data
rm -rf scp-data
mkdir -p scp-data

# Mirror everything except large files
wget -m -np -nH --cut-dirs=1 -R "index.html*" https://scp-data.tedivm.com/ -P ./scp-data

# Remove or move any file over 25MB (e.g. content_goi.json)
find ./scp-data -type f -size +25M -delete
