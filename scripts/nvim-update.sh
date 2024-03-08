#!/bin/bash

echo "Run with sudo"

# fetch new appimage
curl -L -o /home/mzucker007/Downloads/nvim.appimage https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
mv /home/mzucker007/Downloads/nvim.appimage /usr/local/bin/nvim.appimage
chmod a+x /usr/local/bin/nvim.appimage

nvim -v
