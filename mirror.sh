#!/bin/bash

# Clean previous content
rm -rf css images scp series tale

# Mirror everything (no size restrictions!)
wget -m -np -nH --cut-dirs=1 -R "index.html*" https://scp-data.tedivm.com/ -P .
