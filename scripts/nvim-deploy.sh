#!/bin/bash

cd ~/code/dotfiles
git pull
rsync -avh --delete /home/mzucker007/code/dotfiles/nvim/ /home/mzucker007/.config/nvim/

echo "nvim deployed"