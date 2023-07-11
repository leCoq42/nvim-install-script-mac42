#!/bin/bash
set -eu
nvim="$HOME/nvim-macos.tar.gz"
nvimurl="https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz"
curl -fL "$nvimurl" -o "$nvim"
xattr -c $HOME/nvim-macos.tar.gz
tar xzvf $HOME/nvim-macos.tar.gz
