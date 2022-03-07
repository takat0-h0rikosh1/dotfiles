#!/bin/bash
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
fish -c "fisher install reitzig/sdkman-for-fish@v1.4.0"
ln -sfnv ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
