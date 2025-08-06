#!/bin/bash
mkdir -p scp-data
wget -m -np -nH --cut-dirs=1 -R "index.html*" https://scp-data.tedivm.com/ -P ./scp-data
