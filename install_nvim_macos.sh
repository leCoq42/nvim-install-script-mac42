#!/bin/bash
nvim="$HOME/nvim-macos.tar.gz"
nvimurl="https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz"
curl -L "$nvimurl" -o $nvim
xattr -c $nvim
tar xzvf $nvim -C $HOME
export PATH="$HOME/nvim-macos/bin:$PATH"
rm -rf $nvim
