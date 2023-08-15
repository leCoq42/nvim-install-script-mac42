#!/bin/zsh
nvim="$HOME/nvim-macos.tar.gz"
nvimurl="https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz"
curl -L "$nvimurl" -o $nvim
xattr -c $nvim
tar xzvf $nvim -C $HOME
grep -qxF "export PATH=\"$HOME/nvim-macos/bin:\$PATH\"" $HOME/.zshrc || echo "export PATH=\"$HOME/nvim-macos/bin:\$PATH\"" >>$HOME/.zshrc
source $HOME/.zshrc
rm -rf $nvim
